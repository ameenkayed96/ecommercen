<?php

use App\Http\Livewire\CartComponnent;
use App\Http\Livewire\CheckoutComponnent;
use App\Http\Livewire\HomeComponnent;
use App\Http\Livewire\ShopComponnent;
use App\Http\Livewire\ContactusComponnent;
use App\Http\Livewire\AboutusComponnent;
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

// Route::get('/', function () {
//     return view('layouts.base');
// });

Route::get('/',HomeComponnent::class);
Route::get('/shop',ShopComponnent::class);
Route::get('/cart',CartComponnent::class);
Route::get('/checkout',CheckoutComponnent::class);
Route::get('/contact-us',ContactusComponnent::class);
Route::get('/about-us',AboutusComponnent::class);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
