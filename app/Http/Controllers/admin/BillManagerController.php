<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\OrderList;
use App\Models\Product;
use App\Models\ProductImages;
use App\Models\ProductInformation;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class BillManagerController extends Controller
{
    function index()
    {
        $order_list = OrderList::query()->get();
        return view('admin.bill.bill',data:[
            'order_list' => $order_list
        ]);
    }

    function view(Request $request)
    {

        if($request->has('id'))
        {
            $id = $request->input('id');
            $bill = OrderList::query()->where('id_order',$id)->first();
            $list_bill = OrderDetail::query()->where('id_order',$id)->get();
            return view('admin.bill.bill_detail',data:[
                'bill'=> $bill,
                'list_bill'=>$list_bill
            ]);
        }else{
            return redirect()->route('admin-bill');
        }

    }
}
