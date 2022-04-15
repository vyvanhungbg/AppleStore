<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ShopController extends Controller
{
    public function index(Request $request)
    {

        $categories = DB::table('product_category')->get();
        $products = Product::query();
        if ($request->has('category')) {
            $category = $request->input('category');
            $products->join('product_category', 'product_category.id', '=', 'product.type')
                ->where('product_category.name',$category);
        }
        $products = $products->get();


        return view("shop.index",data :[
            'categories' => $categories,
            'products' => $products,

        ]);
    }
}
