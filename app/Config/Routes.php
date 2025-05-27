<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Home::index', ['filter' => 'auth']);

$routes->get('login', 'AuthController::login');
$routes->post('login', 'AuthController::login');
$routes->get('logout', 'AuthController::logout');

$routes->group('produk', ['filter' => 'auth'], function ($routes) {
    $routes->get('', 'ProdukController::index');
    $routes->post('produk', 'ProdukController::create', ['filter' => 'auth']);
    $routes->post('produk/edit/(:any)', 'ProdukController::edit/$1', ['filter' => 'auth']);
    $routes->get('produk/delete/(:any)', 'ProdukController::delete/$1', ['filter' => 'auth']);
});
$routes->get('keranjang', 'TransaksiController::index', ['filter' => 'auth']);

$routes->get('genpass', 'AuthController::generatePassword');
