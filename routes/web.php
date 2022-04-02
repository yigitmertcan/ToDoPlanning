<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\dashboard;

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

Route::get('/',[dashboard::class, 'index'])->name('dashboard');//anasayfa
Route::get('/reload',[dashboard::class, 'reload'])->name('reload');//cache sıfırlama
