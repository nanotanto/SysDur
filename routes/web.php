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

Route::post('/documents.revised', 'DocumentController@revised');
Route::post('/documents.submit', 'DocumentController@submit');

Route::get('/documents_all', 'DocumentController@all');
Route::get('/documents_draft', 'DocumentController@draft');
Route::get('/documents_publish', 'DocumentController@publish');
Route::get('/documents_view/{document}', 'DocumentController@view');
Route::get('/documents_select/{id}', 'DocumentController@select');

Route::get('/fp4forms_open', 'Fp4FormController@open');
Route::get('/fp4forms_view/{id}', 'Fp4FormController@view');
Route::get('/user_id', 'Fp4FormController@user_id');
Route::get('/department_id', 'Fp4FormController@department_id');
Route::get('/fp4form_id', 'Fp4FormController@fp4form_id');

Route::get('/pic_sysdur', 'Fp4FormController@pic_sysdur');
Route::get('/open_picsysdur', 'Fp4FormController@open_picsysdur');
Route::get('/user_', 'Fp4FormController@user_');
Route::get('/department_', 'Fp4FormController@department_');
Route::get('/total_picsysdur', 'Fp4FormController@total_picsysdur');

Route::post('/submitForm', 'Fp4FormController@submitForm');
Route::post('/updateForm', 'Fp4FormController@updateForm');
Route::post('/updateForm2', 'Fp4FormController@updateForm2');

Route::post('/uploadfile', 'UploadController@uploadfile');

Route::post('/upload', 'DocumentController@upload');

Route::post('/documents/store', 'DocumentController@save');

Route::get('/documents/storage/uploads/{id}', function ($id) {
	return redirect('/storage/uploads/'.$id);
});

Route::get('/fp4status/{id}', 'Fp4StatusController@status');
Route::post('/updatefp4status', 'Fp4StatusController@updatefp4status');

Route::get('/docstatus/{id}', 'DocStatusController@status');
Route::post('/updatedocstatus', 'DocStatusController@updatedocstatus');