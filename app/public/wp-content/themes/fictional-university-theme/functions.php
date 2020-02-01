<?php

require get_theme_file_path('/includes/like-route.php');
require get_theme_file_path('/includes/search-route.php');

function university_custom_rest() {
    register_rest_field('post', 'author_name', array(
        'get_callback' => function () { return get_the_author(); }
    ));

    register_rest_field('note', 'userNoteCount', array(
      'get_callback' => function () { return count_user_posts(get_current_user_id(), 'note'); }
  ));
}
add_action('rest_api_init', 'university_custom_rest');

function pageBanner($args = NULL) {
if (!$args['title']) {
    $args['title'] = get_the_title();
}
if (!$args['subtitle']) {
    $args['subtitle'] = get_field('page_banner_subtitle');
}
if (!$args['photo']) {
    if (get_field('page_banner_background_image')) {
        $args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];
    } else {
        $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
    }
}
?>
<div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo $args['photo']; ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php echo $args['title']; ?></h1>
      <div class="page-banner__intro">
        <p><?php echo $args['subtitle']; ?></p>
      </div>
    </div>  
  </div>
<?php
}

function university_files() {
    wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js?key=', NULL, microtime(), true);
    wp_enqueue_script('main-university-js', get_theme_file_uri('/js/scripts-bundled.js'), NULL, microtime(), true);
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('university_main_style', get_stylesheet_uri());
    // This is where we make the universityData variable containing the site_url
    // available to our JavaScript modules.
    wp_localize_script('main-university-js', 'universityData', array(
        'root_url' => get_site_url(),
        // Unique ID for user session (authentication)
        'nonce' => wp_create_nonce('wp_rest')
    ));
}
add_action('wp_enqueue_scripts', 'university_files');

function university_features() {
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professorLandscape', 400, 260, true);
    add_image_size('professorPortrait', 480, 650, true);
    add_image_size('pageBanner', 1500, 350, true);
}
add_action('after_setup_theme', 'university_features');

function university_adjust_queries($query) {
    if (!is_admin() AND is_post_type_archive('campus') AND $query->is_main_query()) {
        $query->set('posts_per_page', -1);
    }

    if (!is_admin() AND is_post_type_archive('program') AND $query->is_main_query()) {
        $query->set('orderby', 'title');
        $query->set('order', 'ASC');
        $query->set('posts_per_page', -1);
    }

    if (!is_admin() AND is_post_type_archive('event') AND $query->is_main_query()) {
        $today = date('Ymd');
        $query->set('meta_key', 'event_date');
        $query->set('orderby', 'meta_value_num');
        $query->set('order', 'ASC');
        $query->set('meta_query', array(
            array(
              'key' => 'event_date',
              'compare' => '>=',
              'value' => $today,
              'type' => 'numeric'
            )
          ));
    }
}
add_action('pre_get_posts', 'university_adjust_queries');

function universityMapKey($api) {
    $api['key'] = 'REPLACE_WITH_GOOGLE_MAPS_API_KEY';
    return $api;
}

add_filter('acf/fields/google_map/api', 'universityMapKey');

// Redirect subscriber accounts out of admin and onto homepage
add_action('admin_init', 'redirectSubsToFrontend');

function redirectSubsToFrontend() {
    $currentUser = wp_get_current_user();
    if (count($currentUser->roles) == 1 AND $currentUser->roles[0] == 'subscriber') {
        wp_redirect(site_url('/'));
        exit;
    }
}

add_action('wp_loaded', 'noSubsAdminBar');

function noSubsAdminBar() {
    $currentUser = wp_get_current_user();
    if (count($currentUser->roles) == 1 AND $currentUser->roles[0] == 'subscriber') {
        show_admin_bar(false);
    }
}

// Customize Login Screen
add_filter('login_headerurl', 'ourHeaderUrl');

function ourHeaderUrl() {
    return esc_url(site_url('/'));
}

// Not in lesson, but in the Q&A to change the login header text
// Lesson uses deprecated 'login_headertitle'
add_filter('login_headertext', 'ourLoginText');
 
function ourLoginText(){
    return get_bloginfo('name');
}

add_action('login_enqueue_scripts', 'ourLoginCSS');

function ourLoginCSS() {
    wp_enqueue_style('university_main_style', get_stylesheet_uri());
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
}

// Force note posts to be private
add_filter('wp_insert_post_data', 'makeNotePrivate', 10, 2);

function makeNotePrivate($data, $postarr) {
  if ($data['post_type'] == 'note') {
    if (count_user_posts(get_current_user_id(), 'note') >= 5 AND !$postarr['ID']) {
      die("You have reached your note limit.");
    }

    $data['post_title'] = sanitize_text_field($data['post_title']);
    $data['post_content'] = sanitize_textarea_field($data['post_content']);
  }

  if ($data['post_type'] == 'note' AND $data['post_status'] != 'trash') {
    $data['post_status'] = "private";
  }
  
  return $data;
}

// remove "Private: " from titles (not in lesson)
// Use a regex to allow 'Private: ' in title if user manually entered it.
function remove_private_prefix($title) {
  if (get_post_status() == 'private') {
    $regTitle = preg_replace('/^Private: /', '', $title);
    return $regTitle;
  } else {
    return $title;
  }
}
add_filter('the_title', 'remove_private_prefix');
