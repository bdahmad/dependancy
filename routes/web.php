<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\DivisionController;
use App\Http\Controllers\AjaxController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::post('/division/submit', [DivisionController::class, 'insert'])->name('division.insert');
Route::post('/district/submit', [DivisionController::class, 'insertDistrict'])->name('district.insert');
Route::post('/upazila/submit', [DivisionController::class, 'insertUpazila'])->name('upazila.insert');

Route::get('/ajax/district/{id}', [AjaxController::class, 'district'])->name('district.ajax');
