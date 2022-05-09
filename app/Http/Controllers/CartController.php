<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use function Sodium\add;

class CartController extends Controller
{
    //
    public function update_cart(Request $request)
    {

        session_start();
       // session_destroy();
        $id = $request->input('id');
        if($id !== null){
            if(empty($_SESSION['cart'])){
                $_SESSION['cart'][$id] = 1;
            }elseif(!empty($_SESSION['cart'][$id])){
                $_SESSION['cart'][$id]++;
            }else{
                $_SESSION['cart'][$id] =1;
            }
        }


        //return view('cart.index');
       // header('location:shop');
    }

    public function index(){
        session_start();
        $cart = [];
        if(!empty($_SESSION['cart'])){
            $cart = $_SESSION['cart'];
        }
        $products_in_cart = [];
        foreach ($cart as $id => $quantity){
            $product = Product::query()->where('id', $id)->first();
            if($product !== null){
                $products_in_cart[] = $product;
            }
        }

        return view('cart.index',data:['cart'=>$cart, 'products_in_cart'=>$products_in_cart]);
    }
}
