@extends('layouts.app')
@section('title','All Product')
@section('content')
 

 <div class="page-wrapper">
        <div class="page-header">
            <div class="page-header-title">
                <h4>All Product</h4>
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
                    <li class="breadcrumb-item"><a href="#!">Ecommerce Product</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page-body">
             
                <!-- Input Group Sizes & Colors card start -->
                <div class="card">
                    <div class="card-header">
                        <h5>View all Product</h5>
                        <a href="{{ route("product.create") }}" class="float-right btn btn-primary btn-sm">Add More</a>
                    </div>
                    <div class="card-block">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <table id="datatable" class="table table-bordered">
                                    <tr>
                                        <th>SL</th>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Buy Price</th>
                                        <th>Sell Price</th>
                                        <th>Price Active</th>
                                       
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                    @foreach($products as $product)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $product->product_title }}</td>
                                        <td>{{ $product->category->cat_name }}</td>
                                        <td>{{ $product->buy_price }}</td>
                                        <td>{{ $product->sell_price }}</td>
                                        <td>
                                            @if($product->price_active == 1)
                                             <p class="text text-primary">Sell Price</p>
                                            @elseif($product->price_active == 2)
                                            <p class="btn btn-success btn-sm">Discount Price</p>
                                            @endif
                                        </td>
                                        <td>
                                           <a href="{{ asset($product->default_image) }}" download> <img src="{{ asset($product->default_image) }}" width="100"> </a>
                                        </td>
                                        <td>
                                            <a href="{{ route('product.edit',$product->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                             <a href="{{ route('product.destroy',$product->id) }}" class="btn btn-danger btn-sm"><i class=""></i> Delete</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </table>
                            </div>
                           
                        </div>
                    </div>
                </div>
                
               
            </div>
                                



</div>






@endsection
