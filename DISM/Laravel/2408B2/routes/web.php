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
});
