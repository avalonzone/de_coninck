<?php

use Illuminate\Support\Facades\Route;
use App\Models\Wine;
use App\Models\Grape;

use App\Http\Controllers\WineController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserWineController;

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
Route::resource('wines', WineController::class);
Route::resource('messages', MessageController::class);

Route::get('/', function () {
    return view('home');
})->name('home');

Route::controller(AuthController::class)->group(function() {
    Route::get('login', 'login')->name('login');
    Route::get('logout', 'logout')->name('logout');
    Route::post('authenticate', 'authenticate')->name('authenticate');
});

Route::controller(UserWineController::class)->group(function(){
    Route::get('list', 'list')->name('list');
});

Route::get('/wine', function () {
    $wines = Wine::paginate(15);
    return view('wine', ["wines" => $wines]);
})->name('wine');

/*
Route::get('/grape', function () {
    $grapes = Grape::paginate(15);
    return view('grape', ["grapes" => $grapes]);
})->name('grape');
*/

Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::any('{any}', function() {
    abort(404);
})->where('any', '.*');
