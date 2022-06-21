@extends('admin.master')

@section('content')

    <!-- Main Sidebar Container -->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0"></h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <style>
                h4{
                    font-weight: bold;
                }
            </style>
            <table  border="1">
                <tr ><h2 style="font-weight: bold">Thông tin hóa đơn</h2></tr>
                <tr>
                    <td><h4 style="font-weight: bold">Mã hóa đơn : </h4></td>
                    <td><h5>{{$bill->id_order}}</h5></td>
                </tr>
                <tr>
                    <td><h4>Tên khách hàng : </h4></td>
                    <td><h5>{{$bill->fullname}}</h5></td>
                </tr>

                <tr>
                    <td><h4>Địa chỉ : </h4></td>
                    <td><h5>{{$bill->address}}</h5></td>
                </tr>

                <tr>
                    <td><h4>Email : </h4></td>
                    <td><h5>{{$bill->email}}</h5></td>
                </tr>

                <tr>
                    <td><h4>SDT : </h4></td>
                    <td><h5>{{$bill->phone_number}}</h5></td>
                </tr>

                <tr>
                    <td><h4>Trạng thái : </h4></td>
                    <td><h5>@if($bill->status  === 0) {{"Đã hủy"}} @elseif($bill->status  === 1) {{"Đang chờ xác nhận"}} @else {{"Đã xác nhận giao"}} @endif </h5></td>
                </tr>

                <tr>
                    <td><h4>Phương thức thanh toán : </h4></td>
                    <td><h5>{{$bill->payment_method}}</h5></td>
                </tr>

                <tr>
                    <td><h4>Ghi Chú : </h4></td>
                    <td><h5>@if($bill->note === "") {{"Không có"}} @else {{$bill->note}}  @endif</h5></td>
                </tr>

                <tr>
                    <td><h4>Đơn tạo lúc  : </h4></td>
                    <td><h5>{{$bill->created_at}}</h5></td>
                </tr>

            </table>

            <h2>Thông tin đơn hàng</h2>
            <table>

            </table>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

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
    <script>
        $(document).ready(function(){

            $(".btn_click_delete").click(function() {
                let btn_delete = $(this);
                let id = $(this).data('id');
                var r = confirm("Bạn có chắc chắn muốn xóa sản phẩm này không ?");
                if (r == true) {
                    $.ajax({
                        url: '{{route('admin-product-delete')}}',
                        type: 'GET',
                        data: {id}
                    }).done(function () {
                        let parent_tr = btn_delete.parents('tr');
                        parent_tr.remove();
                    }).fail(function () {
                        alert("Xóa sản phẩm thất bại ");
                    });
                } else {
                    //x = "You pressed Cancel!";
                }


            });
        });
    </script>
@endsection
<!-- ./wrapper -->


