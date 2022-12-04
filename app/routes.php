<?php

// Home page
$app->get('/{page}', "Watson\Controller\HomeController::indexAction")->bind('home');

// Show rss feed
$app->match('/rss', "Watson\Controller\HomeController::rssAction")->bind('rss');

// Detailed info about a link
$app->match('/link/{id}', "Watson\Controller\HomeController::linkAction")->bind('link');

// List links with same tag
$app->match('/tag/{id}', "Watson\Controller\HomeController::tagAction")->bind('tag');

// Login form
$app->get('/login/{page}', "Watson\Controller\HomeController::loginAction")->bind('login');

// Logout form
$app->get('/home/{page}', "Watson\Controller\AdminController::logoutAction")->bind('logout');

// Admin zone
$app->get('/admin/{page}', "Watson\Controller\AdminController::indexAction")->bind('admin');

// Display another link page
$app->match('/admin/link/{page}', "Watson\Controller\AdminController::listLinksAction")->bind('admin_links');

// Add a new link
$app->match('/admin/link/add', "Watson\Controller\AdminController::addLinkAction")->bind('admin_link_add');

// Edit an existing link
$app->match('/admin/link/{id}/edit', "Watson\Controller\AdminController::editLinkAction")->bind('admin_link_edit');

// Remove a link
$app->get('/admin/link/{id}/delete', "Watson\Controller\AdminController::deleteLinkAction")->bind('admin_link_delete');

// Display another user page
$app->match('/admin/user/{page}', "Watson\Controller\AdminController::listUsersAction")->bind('admin_users');

// Add a user
$app->match('/admin/user/add', "Watson\Controller\AdminController::addUserAction")->bind('admin_user_add');

// Edit an existing user
$app->match('/admin/user/{id}/edit', "Watson\Controller\AdminController::editUserAction")->bind('admin_user_edit');

// Remove a user
$app->get('/admin/user/{id}/delete', "Watson\Controller\AdminController::deleteUserAction")->bind('admin_user_delete');