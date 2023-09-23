<?php

use Illuminate\Support\Facades\Route;
use App\Models\Wine;
use App\Models\Grape;

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
    return view('home');
})->name('home');


Route::get('/wine', function () {
    $wines = Wine::paginate(15);
    return view('wine', ["wines" => $wines]);
})->name('wine');

Route::get('/grape', function () {
    $grapes = Grape::paginate(15);
    return view('grape', ["grapes" => $grapes]);
})->name('grape');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');
