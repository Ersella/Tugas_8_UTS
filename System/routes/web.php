<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\KomentarAdminController;
use App\Http\Controllers\KomentarController;
use App\Http\Controllers\UserController;

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


//frontview
Route::get('/', [ClientController::class, 'showIndex']);
Route::get('index', [ClientController::class, 'showIndex']);
Route::get('blog', [ClientController::class, 'showBlog']);
Route::post('index/filter', [ClientController::class, 'filter']);
Route::get('blog/{artikel}', [ClientController::class, 'showBlog']);
Route::post('blog/{artikel}', [KomentarController::class, 'store']);

//admin
Route::get('beranda', [HomeController::class, 'showBeranda']);
Route::get('komentar', [KomentarController::class, 'showKomentar']);


Route::prefix('admin')->group(function(){
    Route::post('artikel/filter', [ArtikelController::class, 'filter']);
    Route::resource('artikel', ArtikelController::class);
    Route::resource('user', UserController::class);
    Route::resource('komentar', KomentarAdminController::class);
    Route::get('artikel-delete/{artikel}', [ArtikelController::class, 'destroy']);
    Route::get('komentar-delete/{komentar}', [KomentarController::class, 'destroy']);
});


Route::get('login', [AuthController::class, 'showLogin'])->name('login');
Route::post('login', [AuthController::class, 'loginProcess']);
Route::get('logout', [AuthController::class, 'logout']);
