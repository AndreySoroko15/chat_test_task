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

Auth::routes();

Route::middleware(['auth'])->group(function () {
    Route::get('/', [App\Http\Controllers\HomeController::class, 'index']);
    Route::get('/search', [App\Http\Controllers\HomeController::class, 'search'])->name('search');
    Route::get('/dialog/{id}', [App\Http\Controllers\DialogController::class, 'index'])->name('dialog.create');
    Route::post('/send-message', [App\Http\Controllers\MessageController::class, 'sendMessage'])->name('message');
    // Route::get('/all-messages/{id}', [App\Http\Controllers\MessageController::class, 'index'])->name('allMassages');
});

