<?php


use App\Http\Controllers\AdminController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\StudentsController;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\ProductDetailsController;
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

Route::get('/',
    action : [HomeController::class,'index']
)->name('home');

Route::get('/shop',
    action : [ShopController::class,'index'])->name('shop');

Route::get('/details',
    action : [ProductDetailsController::class,'index'])->name('details');


Route::get('/cart',
    action : [CartController::class,'index'])->name('cart');

Route::get('/add-to-cart',
    action : [CartController::class,'update_cart']);

Route::get('/admin',
    action : [AdminController::class,'index'])->name('admin');

Route::get('/customer',
    action : [AdminController::class,'customer'])->name('customer');
