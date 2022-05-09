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
        $category_selected = null;

        if ($request->has('category')) {
            $category_selected = $request->input('category');
            $products->join('product_category', 'product_category.id', '=', 'product.type')
                ->where('product_category.name',$category_selected);
        }


        $price_min_selected = null;
        $price_max = null;
        $price_min = null;
        if($request->has('price_max') && $request->has('price_min')){

            $price_min = $request->input('price_min');
            $price_min_selected = $price_min;
            $price_max = $request->input('price_max');
            $products->whereBetween('price',[$price_min,$price_max]);
        }

        $products = $products->paginate(6);

        $products->appends([
            'category' => $category_selected,
            'price_max' => $price_max,
            'price_min' => $price_min,
        ]);


        // list price
        $max_price = Product::query()
            ->where('quantity','>',0)
            ->where('status','=',1)
            ->orderBy('price','desc')
            ->get()
            ->first();
        $level_price = [];
        for($i=0; $i<(int)$max_price->price ;$i+=500)
            $level_price[] = $i;


        return view("shop.index",data :[
            'categories' => $categories,
            'products' => $products,
            'level_price' => $level_price,
            'category_selected' => $category_selected,
            'price_min_selected' => $price_min_selected,
        ]);
    }


}
