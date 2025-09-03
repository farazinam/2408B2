<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\mycontroller;

// Route::get('/', [mycontroller::class, 'Home']);
// Route::get('/About', [mycontroller::class, 'About']);
// Route::get('/Contact', [mycontroller::class, 'Contact']);

Route::controller(mycontroller::class)->group(function (){
    Route::get('/', 'Home');
    Route::get('/About', 'About');
    Route::get('/Contact', 'Contact');
    Route::get('/create', 'create');
    Route::post('/create', 'store');
    Route::get('/read', 'read');

    Route::get('/delete/{id}', 'delete')->name('delete');
    Route::get('/edit/{id}', 'edit')->name('editing');
    Route::post('/update/{idy}', 'update')->name('update');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
