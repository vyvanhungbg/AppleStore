<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function form()
    {
       // return view('welcome', data :['name'=>$name]);
        return view('form');

    }

    public function post(Request $request)
    {
        $name = $request->get('name');
        return view('show',data : ['name' => $name]);

    }
}
