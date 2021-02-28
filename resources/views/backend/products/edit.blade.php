@extends('layouts.app')
@section('title','Add New Products')
@section('content')
 

 <div class="page-wrapper">
        <div class="page-header">
            <div class="page-header-title">
                <h4>Products</h4>
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
                        <h5>Add New Product</h5>
                        <a href="{{ route("product.index") }}" class="float-right btn btn-primary btn-sm">Product List</a>
                    </div>
                    <div class="card-block">

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
                               
              <form action="{{ route('product.update',$product->id) }}" method="post" enctype="multipart/form-data">
              @csrf
            <div class="row">
              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">  Product ID :  </label>
                    <div class="col-sm-12">
                        <input type="text" name="" value="{{ $product->productuid }}" class="form-control" placeholder="Enter Product title" readonly> 
                        <br>
                        <div class="text-danger">{{ $errors->first('product_title') }}</div>
                    </div>
                  </div>
              </div> 

              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">  Product Title :  </label>
                    <div class="col-sm-12">
                        <input type="text" name="product_title" value="{{ $product->product_title }}" class="form-control" placeholder="Enter Product title" required> 
                        <br>
                        <div class="text-danger">{{ $errors->first('product_title') }}</div>
                    </div>
                  </div>
              </div> 

              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">  Product Slug :  </label>
                    <div class="col-sm-12">
                        <input type="text" name="product_slug" value="{{ $product->product_slug }}" class="form-control" placeholder="Enter Product Slug" required> 
                        <br>
                        <div class="text-danger">{{ $errors->first('product_slug') }}</div>
                    </div>
                  </div>
              </div> 


              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Select Category :  </label>
                    <div class="col-sm-12">
                         <select name="category_id" id="category_id" class="form-control select2" required>
                           <option value="">Select Category</option>
                            @foreach($categories as $category)
                            <option {{ $product->category_id == $category->id ? 'selected' : '' }}  value="{{ $category->id }}">{{ $category->cat_name }}</option>
                            @endforeach
                         </select> 
                        <br>
                        <br>
                        <div class="text-danger">{{ $errors->first('category_id') }}</div>
                    </div>
                  </div>
               </div>


               <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Select Sub Category :  </label>
                    <div class="col-sm-12">
                         <select name="subcategory_id" id="subcategory_id" class="form-control select2" >
                           <option value="">Select Sub Category</option>
                             
                         </select> 
                        <br>
                        <br>
                        <div class="text-danger">{{ $errors->first('category_id') }}</div>
                    </div>
                  </div>
               </div> 


 



                  <script>

                function offer(){
                  var sell_price = document.getElementById('sell_price').value;
                  var discount_type = document.getElementById('discount_type').value;
                  var discount = document.getElementById('discount').value;

                  if(discount_type == 1){
                     var result = sell_price - discount;
                  }
                  else if(discount_type == 2){
                    var offer_price = ((sell_price * discount)/100);
                    var result = sell_price - offer_price;
                  }
 

                   if (!isNaN(result)) {
                    document.getElementById('discount_price').value = result;
                  }
                }

              </script>

               

               <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Product Buy Price :  </label>
                    <div class="col-sm-12">
                        <input type="number" name="buy_price" value="{{ $product->buy_price }}" class="form-control" placeholder="Enter Buy Price"> 
                        <br>
                        <div class="text-danger">{{ $errors->first('buy_price') }}</div>
                    </div>
                  </div>
               </div>   


               <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Product Sell Price :  </label>
                    <div class="col-sm-12">
                        <input type="number" name="sell_price" value="{{ $product->sell_price }}" id="sell_price" onkeyup="offer()" class="form-control" placeholder="Enter Sell Price"> 
                        <br>
                        <div class="text-danger">{{ $errors->first('sell_price') }}</div>
                    </div>
                  </div>
               </div> 
              <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-sm-12 col-form-label">
                      Discount Type :</label>
                    <div class="col-sm-12">
                         <select name=" discount_type" id="discount_type" class="form-control">
                             <option  value="" >Select Type</option>
                             <option {{ $product->discount_type == 1 ? 'selected' : '' }} value="1" >Product Discount</option>
                             <option {{ $product->discount_type == 2 ? 'selected' : '' }}  value="2">Product % Discount</option>
                         </select>
                         <br>
                         <div class="text-danger">{{ $errors->first('status') }}</div>
                    </div>
                </div>
              </div>


              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Discount :  </label>
                    <div class="col-sm-12">
                        <input type="number" name="discount" id="discount" value="{{ $product->discount }}" class="form-control" onkeyup="offer()" placeholder="Enter Discount"> 
                        <br>
                        <div class="text-danger">{{ $errors->first('discount') }}</div>
                    </div>
                  </div>
              </div>


              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Discount Price:  </label>
                    <div class="col-sm-12">
                        <input type="number" name="discount_price" value="{{ $product->discount_price }}" id="discount_price" onkeyup="offer()" class="form-control" placeholder="Discount Price" readonly> 
                        <br>
                        <div class="text-danger">{{ $errors->first('discount_price') }}</div>
                    </div>
                  </div>
              </div> 

             <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-sm-12 col-form-label">Price Active :</label>
                    <div class="col-sm-12">
                         <select name="price_active" id="" class="form-control">
                             <option {{ $product->price_active == 1 ? 'selected' : '' }} value="1" >Sell Price</option>
                             <option {{ $product->price_active == 2 ? 'selected' : '' }} value="2"> Discount Price</option>
                         </select>
                         <br>
                         <div class="text-danger">{{ $errors->first('price_active') }}</div>
                    </div>
                </div>
              </div>



             
             <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-sm-12 col-form-label">Default  Image :</label>
                    <div class="col-sm-12">
                         <img src="{{ asset('public/backend/products/') }}/{{ $product->default_image }}" alt="" width="100">
                         <br>
                         <br>
                        <input type="file" name="default_image" value="{{ old('default_image') }}" class="form-control">
                        <br>


                        @php
                         $productimage = App\models\ProductImage::where('product_id',$product->id)->get();

                         @endphp
                       @foreach($productimage as $pimage)
                          <img src="{{ asset('public/backend/products/') }}/{{ $pimage->image }}" alt="" width="100"> 
                              <br>
                              <br>
                        @endforeach


                        <div class="text-danger">{{ $errors->first('default_image') }}</div>
                    </div>
                </div>
                   
             </div>

             <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Short Description :  </label>
                    <div class="col-sm-12">
                         <textarea name="short_discription" id="summernote2" class="form-control" rows="5" placeholder="Enter Product Short Description">{!! $product->short_discription !!}</textarea>
                        <br>
                        <div class="text-danger">{{ $errors->first('short_discription') }}</div>
                    </div>
                  </div>
              </div>

              <div class="col-sm-12">
                 <div class="form-group">
                    <label class="col-sm-12 col-form-label">Long Description :  </label>
                    <div class="col-sm-12">
                         <textarea name="long_discription" id="summernote" class="form-control" rows="5" placeholder="Enter Product Long Description">{!! $product->long_discription !!}</textarea>
                        <br>
                        <div class="text-danger">{{ $errors->first('long_discription') }}</div>
                    </div>
                  </div>
              </div>

              
      
     
            <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-sm-12 col-form-label">
                    Status :</label>
                    <div class="col-sm-12">
                         <select name="status" id="" class="form-control">
                             <option {{ $product->status == 1 ? 'selected' : '' }}   value="1" >Active</option>
                             <option {{ $product->status == 0 ? 'selected' : '' }}  value="0">Deactive</option>
                         </select>
                         <div class="text-danger">{{ $errors->first('status') }}</div>
                    </div>
                </div>
            </div> 


                                                               
                <div class="col-sm-12">
                     <div class="form-group">
                       <div class="col-sm-9">
                             <br>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </div>
              </div>
           </div>

            </form>
                                
                                 
                            </div>
                </div>
                
               
            </div>
                                



</div>





<div id="getSubcategory" data-url="{{ url('getSubcategory')}}"></div> 

@section('customjs')
<script>
  $(document).ready(function(){
        
        $('#category_id').on('change', function(){

           var category_id =  $(this).val();

           
           var url = $('#getSubcategory').data("url");

           $.ajax({
              url: url,
              data: {category_id:category_id},
              type: "GET",
              success: function(response){
                $('#subcategory_id').html(response);
              },  
           });
        });

      });



</script>

 <script>
            /*=========== for description update ============== */
            $(document).ready(function() {
                var max_fields      = 10;
                var wrapper         = $(".container1photo");
                var add_button      = $(".add_form_fieldforphoto");
             
                var x = 1;
                $(add_button).click(function(e){
                    e.preventDefault();
                    if(x < max_fields){
                        x++;
                        $(wrapper).append('<br><div><input type="file" name="product_image[]" class="form-control" required/><a href="#" class="delete btn btn-danger btn-sm" >Delete</a></div>'); //add input box
                    }
              else
              {
              alert('You Reached the limits')
              }
                });
             
                $(wrapper).on("click",".delete", function(e){
                    e.preventDefault(); $(this).parent('div').remove(); x--;
                })
            });  
 
    </script>
@endsection
@endsection
