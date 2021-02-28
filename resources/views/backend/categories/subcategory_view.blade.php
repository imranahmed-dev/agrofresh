@extends('layouts.app')
@section('title','Sub Category')
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
                    <li class="breadcrumb-item"><a href="#!">Sub Category</a>
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
                                        <th>Category</th>
                                        <th>Slug</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                    @foreach($categorylist as $category)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $category->cat_name }}</td>
                                        <td>{{ $category->maincategory->cat_name }}</td>
                                        <td>{{ $category->cat_slug }}</td>
                                        <td>
                                           <a href="{{ asset($category->cat_image) }}" download> <img src="{{ asset($category->cat_image) }}" width="100"> </a>
                                        </td>
                                        <td>
                                            <a href="{{ route('subcategory.destroy',$category->id) }}" class="btn btn-danger btn-sm"><i class=""></i> Delete</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </table>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <h4 class="sub-title">Add New Category</h4>
                                <div class="row">
                                    <form action="{{ route('subcategory.store') }}" method="post" enctype="multipart/form-data">
                                        @csrf
                                    
                                        <div class="col-sm-12">
                                            <div class="input-group input-group-primary">
                                                  <select class="form-control" name="category_id" required> 
                                                  	  <option value="">Select Category</option>
                                                  	  @foreach($maincategories as $category)
                                                  	  <option value="{{ $category->id }}">{{ $category->cat_name }}</option>
                                                  	  @endforeach
                                                  </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="input-group input-group-primary">
                                                <input type="text" name="cat_name" value="{{ old("cat_name") }}" class="form-control" placeholder="Sub Category Name">
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
