<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProductManagerController extends Controller
{
    function index()
    {
        $products = Product::query()->get();
        return view('admin.product.product',data:[
            'products' => $products
        ]);
    }



    public function create()
    {
        //$products = Product::query()->get();
        $categories = DB::table('product_category')->get();
        return view('admin.product.product_add',data:[
            // 'products' => $products
            'categories' =>$categories
        ]);
    }


    public function store(Request $request)
    {


        if($request->file('image')){
            $request->validate([
                'image' => 'mimes:jpeg,bmp,png' // Only allow .jpg, .bmp and .png file types.
            ]);
            $file= $request->file('image');
            //$filename= date('YmdHi').$file->getClientOriginalName();
            $filename= $file->getClientOriginalName();
            $storedPath = $file-> move(public_path('img/image-product'), $filename);

        }


        $product = Product::create(array_merge($request->all(), ['image' => $filename]));
        return  redirect('admin-product');
    }

}
