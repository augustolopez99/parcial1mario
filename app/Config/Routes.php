<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
//muestra base
$routes->get('ver_artista', 'ControladorArtista::verArtista');
//agregar

$routes->post('agregar_artista', 'ControladorArtista::agregarArtista');
//eliminar

$routes->get('eliminar_artista/(:num)', 'ControladorArtista::eliminarArtista/$1');
//datos

$routes->get('datos_artista/(:num)', 'ControladorArtista::verDatosArtista/$1');
//actualizar 
$routes->post('actualizar_artista', 'ControladorArtista::actualizarArtista');