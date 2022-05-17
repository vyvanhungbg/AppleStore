<?php


use App\Http\Controllers\admin\AdminController;
use App\Http\Controllers\admin\ProductManagerController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductDetailsController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\WelcomeController;
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
    action : [CartController::class,'update_cart'])->name('add_to_cart');

Route::get('/admin',
    action : [AdminController::class,'index'])->name('admin');

Route::get('/admin-customer',
    action : [AdminController::class,'customer'])->name('customer');


// Product manager
Route::get('/admin-product',
    action : [ProductManagerController::class,'index'])->name('admin-product');

Route::get('/admin-product-insert',
    action : [ProductManagerController::class,'insert'])->name('admin-product-insert');
