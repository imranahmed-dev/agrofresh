@extends('layouts.app')
@section('title','Category')
@section('content')
 

 <div class="page-wrapper">
        <div class="page-header">
            <div class="page-header-title">
                <h4>Category</h4>
            </div>
            <div class="page-header-breadcrumb">
                <ul class="breadcrumb-title">
                    <li class="breadcrumb-item">
                        <a href="index-2.html">
                            <i class="icofont icofont-home"></i>
                        </a>
                    </li>
                    <li class="breadcrumb-item"><a href="#!">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item"><a href="#!">Ecommerce Dashboard</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page-body">
             
                <!-- Input Group Sizes & Colors card start -->
                <div class="card">
                    <div class="card-header">
                        <h5>View all Category</h5>
                        
                    </div>
                    <div class="card-block">
                        <div class="row">
                            <div class="col-sm-8">
                            <div class="table-responsive">
                                <table id="datatable" class="table table-bordered">
                                    <tr>
                                        <th>SL</th>
                                        <th>Name</th>
                                        <th>Slug</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                    @foreach($maincategories as $category)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $category->cat_name }}</td>
                                        <td>{{ $category->cat_slug }}</td>
                                        <td>
                                           <a href="{{ asset($category->cat_image) }}" download> <img src="{{ asset($category->cat_image) }}" width="100"> </a>
                                        </td>
                                        <td>
                                            <a href="{{ route('category.destroy',$category->id) }}" class="btn btn-danger btn-sm"><i class=""></i> Delete</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </table>
                              </div>
                            </div>
                            <div class="col-sm-4">
                                <h4 class="sub-title">Add New Category</h4>
                                <div class="row">
                                    <form action="{{ route('category.store') }}" method="post" enctype="multipart/form-data">
                                        @csrf
                                    
                                        <div class="col-sm-12">
                                            <div class="input-group input-group-primary">
                                                <input type="text" name="cat_name" value="{{ old("cat_name") }}" class="form-control" placeholder="Category Name">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="input-group input-group-primary">
                                                <input type="text" name="cat_slug" value="{{ old("cat_slug") }}" class="form-control" placeholder="category Slug">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="input-group input-group-primary">
                                                <input type="file" name="cat_image" class="form-control" placeholder="">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="input-group input-group-primary">
                                                <input type="submit" class="btn btn-primary" value="Submit" placeholder="">
                                            </div>
                                        </div>

                                    </form>


                                </div>
                                 
                                 
                                 
                            </div>
                        </div>
                    </div>
                </div>
                
               
            </div>
                                



</div>






@endsection
