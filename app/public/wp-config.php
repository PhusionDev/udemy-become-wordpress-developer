<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'JRH3djvcBd/W2cV/rdaM1k0uEVd8EebXjTkZsJCy6it+AgRXqfn0J1sdAyR6kke9d/vDXzKHZ4Pt/o+3QDa+hw==');
define('SECURE_AUTH_KEY',  '+xoczImJlTrmN2uTogXw7UIahlXGBck1FGI9UDD1knP5QTJMzON+zOeY+mWXxEsbHtvIB2gZfoFlCIsyQXziEg==');
define('LOGGED_IN_KEY',    'S8mfnNlPd8Tfm+Nrs4pv8bbbtUj0JXz/Lrj2Gfm9t85uESd1/JT3Fgm2P+des+w9gUHwWNhdq3mliMGyOVO4ag==');
define('NONCE_KEY',        'sDRsBsQCWWIvMkO/ubZNbKGry/XcIFPrGEYR3HeqZkRB87Gkzx2nEOrRUeJM1A7YQJSWt/vKDsSSl7Wqx2KP+Q==');
define('AUTH_SALT',        '6IRFRP364zjaLMrPrsRPsRZuO2oEcK35FP8LR5xMDZV32HTuWTsCbpEplwelHp/d9tv1iIwcH3+4Ou3426RYFQ==');
define('SECURE_AUTH_SALT', 'PsIhxbmgZjkyt3ZqJe/hyCJlv5QjjVRX3BqNsNImZsowBa2vpBzG4W9cw36QwOxnZWhqF3sow429qCfWphQwAQ==');
define('LOGGED_IN_SALT',   'EWFrK6GoTyd6Zkwz36euXr87jhSGb2bRoFmlQITJW/C3JJ2zvjy5pTAsks0MZO29x57Jes/57spJ0QWooJVfmA==');
define('NONCE_SALT',       '5jeLFrDbkDfximgUTH1gq1anmLDqB09I4EcG4EhvFyz3syrxq2SdCbzT1a7h36sbKIuQznQbvXaxVqVyX4dk2g==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
