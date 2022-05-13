<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductDetailsController extends Controller
{
    public function index(Request $request)
    {
        $product = Product::query()
        ->where('id','=',59)
       // ->limit(1)
        ->first();
        $products_related = Product::query()
            ->where('type','like',1)
            ->limit(4)
            ->get();
        return view("details.index",data: [
            "product" => $product,
            "products_related" => $products_related
        ]);

    }


}
