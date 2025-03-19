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

#IN PROCESS (DASHBOARD AREA)
$routes->get('Inprocessc/getDefectAssignments', 'Inprocessc::getDefectAssignments');

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
$routes->get('addMemberc/getUser/(:num)', 'addMemberc::getUser/$1'); // Use lowercase 'addMemberc'
$routes->post('addMemberc/updateUser/(:num)', 'addMemberc::updateUser/$1');
$routes->post('addMemberc/deleteUser/(:num)', 'addMemberc::deleteUser/$1');
$routes->post('addMemberc/addUser', 'addMemberc::addUser');


# SHIFT TYPES FETCHING
$routes->get('fetchShiftc/fetchShiftTypes', 'fetchShiftc::fetchShiftTypes');

# PROTECTED ROUTES
$routes->get('dashboard', ['filter' => 'auth']);

# DAILY ATTENDANCE ROUTES
// Route to access the daily attendance data
$routes->get('/dailyattendancec', 'Dailyattendancec::getAttendanceData');

// ATTENDANCE ROUTES
$routes->get('addAttendance', 'AddAttendance::index');
$routes->get('addAttendance/getAttendanceData', 'AddAttendance::getAttendanceData');  
$routes->post('addAttendance/update/(:num)', 'addAttendance::update/$1');

  // Add ID parameter here
$routes->post('addAttendance/add', 'AddAttendance::add');
$routes->get('addAttendance/view/(:num)', 'AddAttendance::view/$1');
$routes->post('addAttendance/delete/(:num)', 'AddAttendance::delete/$1');


$routes->get('system', 'system::index');





