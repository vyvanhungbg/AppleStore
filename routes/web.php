<?php

use App\Http\Controllers\ProductDetailsController;
use App\Http\Controllers\ContactsController;
use App\Http\Controllers\admin\AdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\admin\ProductManagerController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
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

Route::get('/login',
    action : [LoginController::class,'getLogin']
)->name('login');

Route::get('/register',
    action : [loginController::class,'showRegister']
);

Route::post('/register',
    action : [loginController::class,'register']    
)->name('register');

Route::post('/login',
    action : [LoginController::class,'postLogin']
)->name('postLogin');

Route::get('/logout',
    action : [LoginController::class,'getLogout'])->name('logout');

Route::get('/shop',
    action : [ShopController::class,'index'])->name('shop');

Route::get('/details',
    action : [ProductDetailsController::class,'index'])->name('details');

Route::get('/cart',
    action : [CartController::class,'index'])->name('cart');

Route::get('/add-to-cart',
    action : [CartController::class,'add_to_cart'])->name('add_to_cart');

Route::get('/update-to-cart',
    action : [CartController::class,'update_to_cart'])->name('update_to_cart');

Route::get('/checkout',
    action : [CheckoutController::class,'index'])->name('checkout');

Route::put('/order',
    action : [CheckoutController::class,'addOrder'])->name('addOrder');


Route::get('/admin',
    action : [AdminController::class,'index'])->name('admin');

Route::get('/admin-customer',
    action : [AdminController::class,'customer'])->name('customer');


// Product manager
Route::get('/admin-product',
    action : [ProductManagerController::class,'index'])->name('admin-product');

Route::get('/admin-product-create',
    action : [ProductManagerController::class,'create'])->name('admin-product-create');

Route::post('/admin-product-store',
    action : [ProductManagerController::class,'store'])->name('admin-product-store');

// detail
Route::get('/details',
    action : [ProductDetailsController::class,'index'])->name('details');

Route::get('/contacts',
    action : [ContactsController::class,'index'])->name('contacts');
