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
$routes->post('defects/store1', 'Defects::store1');
$routes->post('defects/saveGlobalToggle', 'Defects::saveGlobalToggle');
$routes->post('defects/deleteZeroCountDefects', 'Defects::deleteZeroCountDefects');


# DEFECTS ROUTES GET
$routes->get('defects', 'Defects::index');
$routes->get('defectsview', 'Defects::index'); 
$routes->get('defects/fetchDefects', 'Defects::fetchDefects');
$routes->get('Defectstype/getDefectTypes', 'Defectstype::getDefectTypes');
$routes->get('Defectstype/getName', 'Defectstype::getName');
$routes->get('Defectstype/getShift', 'Defectstype::getShift');


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
$routes->post('addMemberc/updateDuty', 'AddMemberc::updateDuty');
$routes->post('addMemberc/resetPassword', 'addMemberc::resetPassword');

# SHIFT TYPES FETCHING
$routes->get('fetchShiftc/fetchShiftTypes', 'fetchShiftc::fetchShiftTypes');

# PROTECTED ROUTES
$routes->get('dashboard', ['filter' => 'auth']);

# DAILY ATTENDANCE ROUTES
// Route to access the daily attendance data
$routes->get('/dailyattendancec', 'Dailyattendancec::getAttendanceData');

# ATTENDANCE
$routes->get('addAttendance', 'AddAttendance::index');
$routes->get('addAttendance/getAttendanceData', 'AddAttendance::getAttendanceData');  
$routes->post('addAttendance/update/(:num)', 'addAttendance::update/$1');

# ID PARAMETER HERE
$routes->post('addAttendance/add', 'AddAttendance::add');
$routes->get('addAttendance/view/(:num)', 'AddAttendance::view/$1');
$routes->post('addAttendance/delete/(:num)', 'AddAttendance::delete/$1');


$routes->get('system', 'system::index');

$routes->get('Crosstrainc/fetch', 'Crosstrainc::fetch');
$routes->post('Crosstrainc/save', 'Crosstrainc::save');
$routes->get('Crosstrainc/get/(:num)', 'Crosstrainc::get/$1');
$routes->delete('Crosstrainc/delete/(:num)', 'Crosstrainc::delete/$1');
$routes->get('Crosstrainc', 'Crosstrainc::inedexes');
$routes->get('Crosstrainc/getTitle', 'Crosstrainc::getTitle');
$routes->post('Crosstrainc/updateTitle', 'Crosstrainc::updateTitle');  // Make sure this is POST!


$routes->get('/dashboard', 'defects_types::index');
$routes->get('/dashboard/fetch-defects', 'defects_types::fetchDefectSummary');

$routes->get('empSkills/getTitle', 'empSkills::getTitle');
$routes->get('empSkills/getTitle1', 'empSkills::getTitle1');

# EDIT TOP 5 TITLE
$routes->post('empSkills/updateTitle1', 'empSkills::updateTitle1'); 

# ADMIN LOGS
$routes->get('activityLogs', 'ActivityLogs::index'); // To load the main page
$routes->get('activityLogs/fetchLogs', 'ActivityLogs::fetchLogs'); // To fetch logs via AJAX


# DELETED LOGS
$routes->get('activityLogs/indexdb', 'ActivityLogs::indexdb'); // To load the main page


# OPERATORS

$routes->group('operators', function($routes) {
    $routes->get('index', 'Operators::index');
    $routes->get('fetch', 'Operators::fetch');
    $routes->get('fetch/(:num)', 'Operators::fetch/$1');
    $routes->post('add', 'Operators::add');  // POST route for adding
    $routes->get('edit/(:num)', 'Operators::edit/$1');
    $routes->post('update', 'Operators::update');
    $routes->post('delete/(:num)', 'Operators::delete/$1');  // Keep this for deleting

});
$routes->post('Operators/updateDuty', 'Operators::updateDuty');


# DEFECTS

$routes->group('defects', function($routes) {
    $routes->get('defectsViews', 'Defects::defectsViews');
    $routes->get('fetchDefects1', 'Defects::fetchDefects1');
});

$routes->post('Defects/updateDefect', 'Defects::updateDefect');
$routes->post('Defects/deleteDefect', 'Defects::deleteDefect');




