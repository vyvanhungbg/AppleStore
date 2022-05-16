<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Product;

class ProductManagerController extends Controller
{
    function index()
    {
        $products = Product::query()->get();
        return view('admin.product.product',data:[
            'products' => $products
        ]);
    }

    function insert()
    {
        //$products = Product::query()->get();
        return view('admin.product.product_add',data:[
            // 'products' => $products
        ]);
    }
}
