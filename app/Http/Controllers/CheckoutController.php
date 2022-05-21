<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{
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
        return view('checkout.index',data:['cart'=>$cart, 'products_in_cart'=>$products_in_cart]);
    }

    public function checkout(){
        if(Auth::check()){
            return redirect()->route('checkout');
        }
        else{
            echo '<script language="javascript">';
            echo 'alert("ban phai dang nhap !!!")';
            echo '</script>';
            return redirect()->route('login');
        }
    }

    public function addOrder(request $request){
        if(!Auth::check()){
            echo '<script language="javascript">';
            echo 'alert("ban phai dang nhap !!!")';
            echo '</script>';
            return redirect()->route('login');
        }
        else{
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
            $totalPrice = 0;
            foreach($products_in_cart as $product)
                $totalPrice += $product->price * $cart[$product->id];

            $order = new OrderList();
            $order->id;
            $order->username = $request->username;
            $order->fullname = $request->fullname;
            $order->address = $request->address;
            $order->phone_number = $request->phone;
            $order->total_price = $totalPrice;
            $order->email = $request->email;
            $order->payment_method = $request->paymentMethod;

            $order->save();

            foreach($products_in_cart as $product)
            {
                $orderDetail = new OrderDetail();
                $orderDetail->id_order = $order->id;
                $orderDetail->id_product = $product->id;
                $orderDetail->price = $product->price;
                $orderDetail->qty = $cart[$product->id];

                $orderDetail->save();

                $data = Product::find($product->id);
                $data->quantity = $data->quantity - $cart[$product->id];
                $data->sold += $cart[$product->id];
                $data->save();

            }
            // $data = OrderDetail::find($order->id_order);
            // $data->

            return redirect()->route('home');
        }

    }
}
