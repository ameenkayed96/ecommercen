<?php

use App\Http\Livewire\CartComponnent;
use App\Http\Livewire\CheckoutComponnent;
use App\Http\Livewire\HomeComponnent;
use App\Http\Livewire\ShopComponnent;
use App\Http\Livewire\ContactusComponnent;
use App\Http\Livewire\AboutusComponnent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\DetailsComponnent;
use App\Http\Livewire\User\UserDashboardComponent;
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

Route::get('/',HomeComponnent::class)->name('home');
Route::get('/shop',ShopComponnent::class);
Route::get('/cart',CartComponnent::class);
Route::get('/checkout',CheckoutComponnent::class);
Route::get('/contact-us',ContactusComponnent::class);
Route::get('/about-us',AboutusComponnent::class);
Route::get('/signout',function(){
    session()->flush();
    return redirect()->route('home');
})->name('signout');

Route::get('/product/details/{slug}',DetailsComponnent::class)->name('product.details');


//For User
Route::middleware(['auth:sanctum', 'verified'])->group(function(){
    Route::get('/user/dashboard',UserDashboardComponent::class)->name('user.dashboard');

});

//For Admin
Route::middleware(['auth:sanctum', 'verified' , 'authadmin'])->group(function(){
    Route::get('/admin/dashboard',AdminDashboardComponent::class)->name('admin.dashboard');

});

