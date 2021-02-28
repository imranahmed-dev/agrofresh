@extends('layouts.app')
@section('title','')
@section('content')
 

 <div class="page-wrapper">
        <div class="page-header">
            <div class="page-header-title">
                <h4></h4>
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
                    <li class="breadcrumb-item"><a href="#!"> </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page-body">
             
                <!-- Input Group Sizes & Colors card start -->
                <div class="card">
                    <div class="card-header">
                        <h5>View All Blog Post</h5>
                        <a href="{{ route('blog.create') }}" class="btn btn-primary btn-sm float-right">Add Post</a>
                    </div>
                    <div class="card-block">
                        <div class="row">
                              <table id="datatable" class="table table-bordered">
                                    <tr>
                                        <th>SL</th>
                                        <th>Title</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                    @foreach($posts as $post)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $post->title }}</td>
                                        <td> 
                                        	<a href="{{ asset($post->image) }}" download> <img src="{{ asset($post->image) }}" width="100"> </a>
                                        </td>
                                        <td>
                                            <a href="{{ route('blog.edit',$post->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                            <a href="{{ route('blog.destroy',$post->id) }}" class="btn btn-danger btn-sm"><i class=""></i> Delete</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
