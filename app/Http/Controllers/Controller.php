<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Product;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function __construct()
    {
        // Load your objects
        if(!isset($_SESSION))
        {
            session_start();
        }
        $cart = [];
        if(!empty($_SESSION['cart'])){
            $cart = $_SESSION['cart'];
        }
        $total = 0;
        foreach ($cart as $id => $quantity){
            $product = Product::query()->where('id', $id)->first();
            if($product !== null || $quantity >0){
                $total += $product->price * $quantity;
            }
        }

        // Make it available to all views by sharing it
        view()->share('total', $total);
    }
}
