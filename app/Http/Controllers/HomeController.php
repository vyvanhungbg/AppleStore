<?php

namespace App\Http\Controllers;

use App\Models\home;
use App\Http\Requests\StorehomeRequest;
use App\Http\Requests\UpdatehomeRequest;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

    public function index()
    {
        //query banner
        $images_banner = DB::table('management_image_banner')->get();

        //query Top 3 best selling products
        $images_top_3_best_sell = DB::table('product')->orderBy('sold','desc')->limit(3)->get();

        // query Bestsaler
        $product_best_sell = DB::table('product')->orderBy('sold','desc')->limit(8)->get();
        $product_sell_time = DB::table('product')->get()->first();
        $product_price_max = DB::table('product')->orderBy('price','desc')->limit(6)->get();
        return view("index",data: [
            'images_banner' => $images_banner,
            'images_top_3_best_sell' => $images_top_3_best_sell,
            'product_best_sell' => $product_best_sell,
            'product_sell_time' => $product_sell_time,
             "product_price_max" =>$product_price_max
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorehomeRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorehomeRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\home  $home
     * @return \Illuminate\Http\Response
     */
    public function show(home $home)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\home  $home
     * @return \Illuminate\Http\Response
     */
    public function edit(home $home)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatehomeRequest  $request
     * @param  \App\Models\home  $home
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatehomeRequest $request, home $home)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\home  $home
     * @return \Illuminate\Http\Response
     */
    public function destroy(home $home)
    {
        //
    }
}
