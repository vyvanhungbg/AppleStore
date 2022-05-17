@extends('admin.master')

@section('content')


    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dashboard</h1>
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
                <div class="row">
                    <div class="col-md-6">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">New Product</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <form>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="inputName">Product Name</label>
                                        <input type="text" id="inputProductName" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputDescription">Product Description</label>
                                        <textarea id="inputProductDescription" class="form-control" rows="4"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputStatus">Product Category</label>
                                        <select id="inputStatus" class="form-control custom-select">
                                        @foreach($categories as $category)
{{--                                                <option selected="" disabled="">Select one</option>--}}
                                                <option name="{{ $category->id}}">{{$category->name}}</option>
                                        @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputClientCompany">Product Price</label>
                                        <input type="text" id="inputProductPrice" class="form-control">
                                    </div>


                                    <div class="form-group">
                                        <label for="inputProjectLeader">Project Quantity</label>
                                        <input type="text" id="inputProjectLeader" class="form-control">
                                    </div>
                                </div>
                            </form>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="col-md-6">
                        <div class="card card-secondary">
                            <div class="card-header">
                                <h3 class="card-title">Image for product</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">


                                <table border="1" cellspacing="10px" cellpadding="10px">
                                    <tr>
                                        <td><label>Image main</label></td>
                                        <td><input type="file" onchange="readURL(this,'image_preview_main');" /></td>
                                        <td> <img height="100px" width="100px" id="image_preview_main" src="#" alt="your image" /></td>
                                    </tr>

                                    <tr>
                                        <td><label>Image 1</label></td>
                                        <td> <input type="file" onchange="readURL(this,'image_preview_1');" /></td>
                                        <td>  <img height="100px" width="100px" id="image_preview_1" src="#" alt="your image" /></td>
                                    </tr>

                                    <tr>
                                        <td><label>Image 2</label></td>
                                        <td> <input type="file" onchange="readURL(this,'image_preview_2')" /></td>
                                        <td>  <img height="100px" width="100px" id="image_preview_2" src="#" alt="your image" /></td>
                                    </tr>

                                    <tr>
                                        <td><label>Image 3</label></td>
                                        <td> <input type="file" onchange="readURL(this,'image_preview_3')" /></td>
                                        <td>  <img height="100px" width="100px" id="image_preview_3" src="#" alt="your image" /></td>
                                    </tr>
                                </table>

                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <a href="#" class="btn btn-secondary">Cancel</a>
                        <input type="submit" value="Create new Project" class="btn btn-success float-right">
                    </div>
                </div>
            </section>

        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <script type="text/javascript">
        function readURL(input,id) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#'+id).attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }


    </script>


@endsection
