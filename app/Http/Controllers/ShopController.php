<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ShopController extends Controller
{
    public function index()
    {
        $categories = DB::table('product_category')->get();
        $products = DB::table('product')->get();
        return view("shop.index",data :[
            'categories' => $categories,
            'products' => $products
        ]);
    }
}
