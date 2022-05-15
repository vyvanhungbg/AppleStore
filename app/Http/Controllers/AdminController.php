<?php

namespace App\Http\Controllers;

use App\Models\OrderList;
use App\Models\User;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    //

    function index()
    {
        $number_bill_pending = OrderList::query()->where('status','=',2)->count();
        $number_user = User::query()->count();
        return view('admin.index',data:[
            'number_bill_pending' => $number_bill_pending,
            'number_user' => $number_user
        ]);
    }

    function customer()
    {
        return view('admin.customer');
    }
}
