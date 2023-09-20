<?php

use Illuminate\Support\Facades\Route;

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
    return view('wine');
})->name('wine');

Route::get('/grape', function () {
    return view('grape');
})->name('grape');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');
