<?php

use App\Http\Controllers\TodoController;
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
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::prefix('todos')->as('todos.')->controller(TodoController::class)->group(function() {
    Route::get('index', 'index')->name('todos.index');
    Route::get('create', 'create')->name('todos.create');
    Route::post('store', 'store')->name('todos.store');
    Route::get('show/{id}', 'show')->name('todos.show');
    Route::get('{id}/edit', 'edit')->name('todos.edit');
    Route::put('update', 'update')->name('todos.update');
    Route::delete('destroy', 'destroy')->name('todos.destroy');
});

