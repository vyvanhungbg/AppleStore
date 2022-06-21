<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <meta charset="UTF-8">
    <meta name="description" content="Apple store Template">
    <meta name="keywords" content="Apple store, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Apple Store</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />



    <!-- Css Styles -->
    <link rel="stylesheet" href="{{asset("css/bootstrap.min.css")}}" type="text/css">
    <link rel="stylesheet" href="{{asset("css/font-awesome.min.css")}}" type="text/css">
    <link rel="stylesheet" href="{{asset("css/elegant-icons.css")}}" type="text/css">
    <link rel="stylesheet" href="{{asset("css/magnific-popup.css")}}" type="text/css">
    <link rel="stylesheet" href="{{asset("css/nice-select.css")}}" type="text/css">
    <link rel="stylesheet" href="{{asset("css/owl.carousel.min.css")}}" type="text/css">
    <link rel="stylesheet" href="{{asset('css/slicknav.min.css')}}" type="text/css">

    <link rel="stylesheet" href="{{asset('css/style.css')}}" type="text/css">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"> -->

</head>
<body>

<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->


    <div class="bg-white fixed-top shadow mb-5 bg-body rounded">
    <div class="container">
        <div class="row ">
            <div class="col-lg-2 col-md-2">
                <div class="header__logo">
                    <a href="{{asset('../')}}"><img src="img/logo-header.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li @if(Route::current()->getName() === 'home') class="active" @endif><a href="{{route('home')}}">Home</a></li>
                        <li @if(Route::current()->getName() === 'shop') class="active" @endif><a href="{{route('shop')}}">Product</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="./about.html">About Us</a></li>
                                <li><a href="shop-details.html">Shop Details</a></li>
                                <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                <li><a href="./checkout.html">Check Out</a></li>
                                <li><a href="./blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li @if(Route::current()->getName() === 'contacts') class="active" @endif><a href="{{route('contacts')}}">Contacts</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="header__nav__option">
                        @if (Illuminate\Support\Facades\Auth::check() === true)
                            <a href="#">{{Auth::user()->fullname}}</a>
                            <a href="{{route('logout')}}"><i class="fas fa-sign-out-alt"></i></a>
                        @else
                        <a href="{{asset('../login')}}">Sign In</a>
                        @endif
                    <a href="#" class="search-switch"><img src="{{asset('img/icon/search.png')}}" alt=""></a>
                    <a href="{{asset('/cart')}}"><img src="{{asset('img/icon/cart.png')}}" alt=""> <span>0</span></a>

                    <div id="div-price" class="price">{{'$'.$total}}</div>
                </div>
            </div>
        </div>
        <div class="canvas__open"><i class="fas fa-bars"></i></div>
    </div>
    </div>
</header>
<!-- Header Section End -->
<div  style ="margin-top:86px;"></div>
@yield('content')


<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#"><img src="img/footer-logo.png" alt=""></a>
                    </div>
                    <p>Difference creates brand.</p>
                    <a href="#"><img src="img/payment.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Shopping</h6>
                    <ul>
                        <li><a href="#">Iphone</a></li>
                        <li><a href="#">Ipad</a></li>
                        <li><a href="#">Apple watch</a></li>
                        <li><a href="#">Sell</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Other</h6>
                    <ul>

                        <li><a href="#">Payment method</a></li>
                        <li><a href="#">delivery</a></li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                <div class="footer__widget">
                    <h6>Contact</h6>
                    <div class="footer__newslatter">
                        <p>Email : </p>
                        <form action="#">
                            <input type="text" placeholder="Your email">
                            <button type="submit"><span class="icon_mail_alt"></span></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="footer__copyright__text">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <p>Copyright ©
                        <script>
                            document.write(new Date().getFullYear());
                        </script>2020
                        All rights reserved | This template is made with <i class="fa fa-heart-o"
                                                                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    </p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<script src="{{asset("js/jquery-3.3.1.min.js")}}"></script>
<script src="{{asset("js/bootstrap.min.js")}}"></script>
<script src="{{asset("js/jquery.nice-select.min.js")}}"></script>
<script src="{{asset("js/jquery.nicescroll.min.js")}}"></script>
<script src="{{asset("js/jquery.magnific-popup.min.js")}}"></script>
<script src="{{asset("js/jquery.countdown.min.js")}}"></script>
<script src="{{asset("js/jquery.slicknav.js")}}"></script>
<script src="{{asset("js/mixitup.min.js")}}"></script>
<script src="{{asset("js/owl.carousel.min.js")}}"></script>
<script src="{{asset("js/main.js")}}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script> -->

<script>
    $(document).ready(function(){

        $(".add-cart").click(function(){
            let id = $(this).data('id_add_to_cart');
            let name = $(this).data('name_add_to_cart');
            $.ajax({
                url: '{{route('add_to_cart')}}',
                type: 'GET',

                data: {id}
            }).done(function (data) {
                const div = document.getElementById('div-price');
                div.textContent = '$'+data;
                alert("Đã thêm "+name+"  vào giỏ hàng");
            }).fail(function () {
                alert("Thêm sản phẩm"+name+" thất bại ");
            });
        });
    });

    $(document).ready(function(){

        $(".btn-update-quantity").click(function(){
            let btn_update = $(this);
            let id = $(this).data('id');
            let type = $(this).data('type');
            $.ajax({
                url: '{{route('update_to_cart')}}',
                type: 'GET',
                data: {id,type}
            }).done(function (data) {

                const div = document.getElementById('div-price');
                const div_subtotal = document.getElementById('subtotal');
                const div_total = document.getElementById('total');
                div.textContent = '$'+data;
                div_subtotal.textContent = '$'+data;
                div_total.textContent = '$'+data;
               // alert("Đã thêm "+name+"  vào giỏ hàng");
                let parent_tr = btn_update.parents('tr');
                let price = parent_tr.find(".span-price").text()
                let quantity = parent_tr.find(".span-quantity").text();
                if(type === 'incre'){
                    quantity++;
                }else if(type === 'decre'){
                    quantity--;
                }
                //alert("Đã thêm "+type+"  vào giỏ hàng");
                if(quantity ==0){
                    parent_tr.remove();
                }else {
                    parent_tr.find(".span-quantity").text(quantity);
                    let sum = price*quantity;
                    console.log(sum);
                    parent_tr.find(".span-total-price").text(sum);
                }


            }).fail(function () {
                //alert("Thêm sản phẩm"+name+" thất bại ");
            });
        });
    });

    $(document).ready(function(){

        $(".cart__close").click(function(){
            let btn_close = $(this);
            let id = $(this).data('id');
            $.ajax({
                url: '{{route('remove_to_cart')}}',
                type: 'GET',
                data: {id}
            }).done(function (data) {
               // alert( "Bấm ");
                const div = document.getElementById('div-price');
                const div_subtotal = document.getElementById('subtotal');
                const div_total = document.getElementById('total');
                div.textContent = '$'+data;
                div_subtotal.textContent = '$'+data;
                div_total.textContent = '$'+data;
                // xóa thẻ dòng
                let parent_tr = btn_close.parents('tr');
                parent_tr.remove();

            }).fail(function () {
                alert( "Xóa sản phẩm thất bại !");
            });
        });
    });
</script>
</body>
</html>
