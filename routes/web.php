<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/verify', 'verifyController@getVerify')->name('get_verify');

Route::post('/verify', 'verifyController@postVerify')->name('post_verify');


Route::get('/custom', 'verifyController@custom_form')->name('custom_form');

Route::post('/save', 'verifyController@save')->name('save');
