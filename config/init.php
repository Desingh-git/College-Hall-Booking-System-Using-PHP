<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();

$GLOBALS['config'] = array(
    'mysql' => array(
        'host' => 'localhost:3306',
        'username' => 'root',
        'password' => '',
        'db' => 'halls'
    ),
    'remember' => array(
        'cookie_name' => 'hash',
        'cookie_expiry' => 604800 // time in seconds
    ),
    'session' => array(
        'session_name' => 'user',
        'token_name' => 'token'
    )
);

spl_autoload_register(function($class) {
    require_once 'classes/' . $class . '.php';
});

require_once 'utils/sanitize.php';