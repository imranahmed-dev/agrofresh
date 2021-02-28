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
                        <h5>Add New Post</h5>
                        <a href="{{ route("blog.index") }}" class="float-right btn btn-primary btn-sm">Post List</a>
                    </div>
                    <div class="card-block">
                        <div class="row">
                              <script>
                                        function convertToSlug( str ) {
                  
                                              //replace all special characters | symbols with a space
                                              str = str.replace(/[`~!@#$%^&*()_\-+=\[\]{};:'"\\|\/,.<>?\s]/g, ' ').toLowerCase();
                                              
                                              // trim spaces at start and end of string
                                              str = str.replace(/^\s+|\s+$/gm,'');
                                              
                                              // replace space with dash/hyphen
                                              str = str.replace(/\s+/g, '-'); 
                                              document.getElementById("slug-text").innerHTML= str;
                                              //return str;
                                            }
                                                            
                                    </script> 
                               
                                <form action="{{ route('blog.update',$post->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label">  Post Title :  </label>
                                        <div class="col-sm-12">
                                            <input type="text" name="title" value="{{ $post->title }}" class="form-control" placeholder="Enter Post title" onload="convertToSlug(this.value)" onkeyup="convertToSlug(this.value)" required> 
                                            <br>
                                            <div class="text-danger">{{ $errors->first('title') }}</div>
                                        </div>
                                      </div>

                                     <div class="form-group">
                                        <label class="col-sm-12 col-form-label">  Post Slug :  </label>
                                        <div class="col-sm-12">
                                            <textarea name="slug" id="slug-text" class="form-control" required placeholder="Enter post Slug">{{ $post->slug }}</textarea>
                                            <br>
                                            <div class="text-danger">{{ $errors->first('slug') }}</div>
                                        </div>
                                      </div>


                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label">Short Description :  </label>
                                        <div class="col-sm-12">
                                             <textarea name="description" id="summernote2" class="form-control" rows="5" placeholder="Enter post Description">{{ $post->description }}</textarea>
                                            <br>
                                            <div class="text-danger">{{ $errors->first('description') }}</div>
                                        </div>
                                    </div> 

                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label">Image :  </label>
                                        <div class="col-sm-12">
                                            <input type="file" name="image" class="form-control">
                                            <br>
                                            <img src="{{ asset($post->image) }}">
                                            <div class="text-danger">{{ $errors->first('image') }}</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                         <div class="col-sm-12">
                                            <button type="submit" class="btn btn-primary btn-sm">Update</button>
                                        </div>
                                    </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
