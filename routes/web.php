<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/', 'HomeController@index');
Route::get('/admin', 'HomeController@admin');

Route::group(['middleware' => ['auth']], function() {
    Route::resource('roles','RoleController');
    Route::resource('users','UserController');
    Route::resource('companies','CompanyController');
    Route::resource('departments','DepartmentController');
    Route::resource('positions','PositionController');
    Route::resource('documents','DocumentController');
    Route::resource('comments','CommentController');
    Route::resource('fp4forms','Fp4FormController');
});

Route::post('documents.revised', 'DocumentController@revised');
Route::post('documents.submit', 'DocumentController@submit');

Route::get('documents_publish', 'DocumentController@publish');
Route::get('documents_view/{document}', 'DocumentController@view');

Route::get('fp4forms_open', 'Fp4FormController@open');