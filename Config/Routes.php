<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

# MAIN ROUTES
$routes->get('/', 'Dashboard::index');

# LOGIN ROUTES
$routes->get('login', 'Empusersc::index'); 
$routes->post('Empusersc/authenticate', 'Empusersc::authenticate');
$routes->get('logout', 'Empusersc::logout');

# DEFECTS ROUTES POST
$routes->post('defects/store', 'Defects::store');

# DEFECTS ROUTES GET
$routes->get('defects', 'Defects::index');
$routes->get('defectsview', 'Defects::index'); 
$routes->get('defects/fetchDefects', 'Defects::fetchDefects');
$routes->get('Defectstype/getDefectTypes', 'Defectstype::getDefectTypes');

# USER ROUTES GET
$routes->get('Userc/FetchName', 'Userc::FetchName');

# SHIFT ROUTES
$routes->get('Shiftc/FetchNamesByShift', 'Shiftc::FetchNamesByShift');

# CALENDAR ROUTES
$routes->get('calendarc', 'Calendarc::index');
$routes->get('Calendarc/getAllDefects', 'Calendarc::getAllDefects');

# CROSS-TRAINING ROUTES
$routes->get('Crosstrainc/index', 'Crosstrainc::index');

# ADD MEMBER ROUTES
$routes->get('addMemberc/fetchUsers', 'addMemberc::fetchUsers');  
$routes->get('addMemberc/index', 'addMemberc::index');  
$routes->post('addMemberc/addUser', 'addMemberc::addUser');  

# SHIFT TYPES FETCHING
$routes->get('fetchShiftc/fetchShiftTypes', 'fetchShiftc::fetchShiftTypes');

# PROTECTED ROUTES
$routes->get('dashboard', ['filter' => 'auth']);
$routes->get('addMemberc/addUser', 'addMemberc::addUser', ['filter' => 'auth']);