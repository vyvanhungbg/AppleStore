<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Support\Facades\DB;

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
        $categories = DB::table('product_category')->get();
        return view('admin.product.product_add',data:[
            // 'products' => $products
            'categories' =>$categories
        ]);
    }
}
