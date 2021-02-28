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
                               
                                <form action="{{ route('product.store') }}" method="post" enctype="multipart/form-data">
                                	@csrf
                                    <div class="form-group">
					                    <label class="col-sm-12 col-form-label">  Product Title :  </label>
					                    <div class="col-sm-12">
					                        <input type="text" name="product_title" value="{{ old('product_title') }}" class="form-control" placeholder="Enter Product title" onload="convertToSlug(this.value)" onkeyup="convertToSlug(this.value)" required> 
					                        <br>
					                        <div class="text-danger">{{ $errors->first('product_title') }}</div>
					                    </div>
					                  </div>

                                    <div class="form-group">
				                    <label class="col-sm-12 col-form-label">  Product Slug :  </label>
				                    <div class="col-sm-12">
				                        <textarea name="product_slug" id="slug-text" class="form-control" required placeholder="Enter Product Slug">{{ old('product_slug') }}</textarea>
				                        <br>
				                        <div class="text-danger">{{ $errors->first('product_slug') }}</div>
				                    </div>
				                  </div>

                                     
                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label">Category</label>
                                        <div class="col-sm-12">
                                            <select name="category_id" id="category_id" class="form-control" required>
                                                <option value="">Select Category</option>
                                                @foreach($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->cat_name }}</option>
                                                @endforeach
                                                 
                                            </select>
                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <label class="col-sm-12 col-form-label">Sub Category</label>
                                        <div class="col-sm-12">
                                            <select name="subcategory_id" id="subcategory_id" class="form-control">
                                                <option value="">Select Sub Category</option>
                                                 
                                                 
                                            </select>
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

						               

						           
						                 <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Product Buy Price :  </label>
						                    <div class="col-sm-12">
						                        <input type="number" name="buy_price" value="{{ old('buy_price') }}" class="form-control" placeholder="Enter Buy Price"> 
						                        <br>
						                        <div class="text-danger">{{ $errors->first('buy_price') }}</div>
						                    </div>
						                  </div>
						                


						             
						                 <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Product Sell Price :  </label>
						                    <div class="col-sm-12">
						                        <input type="number" name="sell_price" value="{{ old('sell_price') }}" id="sell_price" onkeyup="offer()" class="form-control" placeholder="Enter Sell Price"> 
						                        <br>
						                        <div class="text-danger">{{ $errors->first('sell_price') }}</div>
						                    </div>
						                  </div>
						               
						                <div class="form-group">
						                    <label class="col-sm-12 col-form-label">
						                      Discount Type :</label>
						                    <div class="col-sm-12">
						                         <select name=" discount_type" id="discount_type" class="form-control">
						                             <option  value="" >Select Type</option>
						                             <option  value="1" >Product Discount</option>
						                             <option  value="2">Product % Discount</option>
						                         </select>
						                         <br>
						                         <div class="text-danger">{{ $errors->first('status') }}</div>
						                    </div>
						                </div>
						              
						                 <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Discount :  </label>
						                    <div class="col-sm-12">
						                        <input type="number" name="discount" id="discount" value="{{ old('discount') }}" class="form-control" onkeyup="offer()" placeholder="Enter Discount"> 
						                        <br>
						                        <div class="text-danger">{{ $errors->first('discount') }}</div>
						                    </div>
						                  </div>
						              
						                 <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Discount Price:  </label>
						                    <div class="col-sm-12">
						                        <input type="number" name="discount_price" value="{{ old('discount_price') }}" id="discount_price" onkeyup="offer()" class="form-control" placeholder="Discount Price" readonly> 
						                        <br>
						                        <div class="text-danger">{{ $errors->first('discount_price') }}</div>
						                    </div>
						                  </div>
						             
						                <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Price Active :</label>
						                    <div class="col-sm-12">
						                         <select name="price_active" id="" class="form-control">
						                             <option  value="1" >Sell Price</option>
						                             <option  value="2"> Discount Price</option>
						                         </select>
						                         <br>
						                         <div class="text-danger">{{ $errors->first('price_active') }}</div>
						                    </div>
						                </div>
						              
						                  <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Default  Image :
						                    <span class="add_form_fieldforphoto help-block btn btn-primary btn-sm pull-right"> Add more </span> <br>  <br>
						                  </label>
						                    <div class="col-sm-12">
						                        <input type="file" name="default_image" value="{{ old('default_image') }}" class="form-control" required>
						                        <br>
						                        <span class="container1photo">
						                       
						                         </span>

						                         <br>  
						                        <div class="text-danger">{{ $errors->first('default_image') }}</div>
						                    </div>
						                </div>
						             
						                 <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Short Description :  </label>
						                    <div class="col-sm-12">
						                         <textarea name="short_discription" id="summernote2" class="form-control" rows="5" placeholder="Enter Product Short Description"></textarea>
						                        <br>
						                        <div class="text-danger">{{ $errors->first('short_discription') }}</div>
						                    </div>
						                  </div>
						             
						                 <div class="form-group">
						                    <label class="col-sm-12 col-form-label">Long Description :  </label>
						                    <div class="col-sm-12">
						                         <textarea name="long_discription" id="summernote" class="form-control" rows="5" placeholder="Enter Product Long Description"></textarea>
						                        <br>
						                        <div class="text-danger">{{ $errors->first('long_discription') }}</div>
						                    </div>
						                  </div>
						             
						                <div class="form-group">
						                    <label class="col-sm-12 col-form-label">
						                    Status :</label>
						                    <div class="col-sm-12">
						                         <select name="status" id="" class="form-control" required>
						                             <option  value="1" >Active</option>
						                             <option  value="2">Daft</option>
						                             <option  value="0">Deactive</option>
						                         </select>
						                         <div class="text-danger">{{ $errors->first('status') }}</div>
						                    </div>
						                </div>

						                <div class="form-group">
						                     <div class="col-sm-12">
						                         <button type="submit" class="btn btn-primary">Submit</button>
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
