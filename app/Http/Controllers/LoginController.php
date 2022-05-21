<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Validator;
use Session;
class LoginController extends Controller
{

    public function __construct()
    {
        $this->middleware(function ($request, $next) {

            $this->middleware('auth:api');

            return $next($request);
        });
    }

    public function getLogin()
    {
        return view('login.index');
    }

    public function register(request $request){

        $user = new User();
        $user->username = $request->username;
        $user->fullname = $request->fullname;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
            if (User::where('username', '=', $user->username)->exists()) {
                echo '<script language="javascript">';
                echo 'alert("da ton tai tai khoan")';
                echo '</script>';
            }
            else {
                $user->save();
                echo '<script language="javascript">';
                echo 'alert("dang ky thanh cong")';
                echo '</script>';
            }
        return view('login.index');
    }

    public function postLogin(request $request)
    {
        //echo $request->username;
        $username = $request->input('usernamein');
        $password = $request->input('passwordin');

        // $exists_user = User::query()->where('username', $username)
        // ->where('password', $password)->count();
        // $user = $request->all();
        // Auth::login($user);
        if(Auth::attempt(['username' => $username, 'password' =>$password])) { 
            $request->session()->regenerate();
            
			// Kiểm tra đúng email và mật khẩu sẽ chuyển trang
			return redirect()->route('home');
		} else {
			// Kiểm tra không đúng sẽ hiển thị thông báo lỗi
                echo '<script language="javascript">';
                echo 'alert("dang nhap sai!!!")';
                echo '</script>';
                sleep(4);
			return redirect('login');
		}
    }


    public function getLogout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
