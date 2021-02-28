<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Validator;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\Category;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $data['products'] = Product::where('status',1)->get();
         return view('backend.products.view',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['categories'] = Category::where('status',1)->get();
        return view('backend.products.add',$data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $input = $request->all();

       $validator = Validator::make($request->all(), [
            'product_title' => 'required',
            'product_slug' => 'required|unique:products',
            'category_id' => 'required',
            'buy_price' => 'required',
            'sell_price' => 'required',
            'short_discription' => 'required',
            'long_discription' => 'required',
            'status' => 'required',
                  
                  
        ]);

        if ($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        } 
        else{

            $checkproductidcount = Product::orderBy('id','DESC')->count();
            $checkproductid = Product::orderBy('id','DESC')->first();



            $product = New Product;

            if($checkproductidcount>0)
            {
                $product->productuid = $checkproductid->productuid+1;
            }
            else{
                $product->productuid = '2000001';
            }
            $product->product_title = $request->product_title;
            $product->product_slug = $request->product_slug;

            if($request->subcategory_id!=null)
            {
                $cattype = Category::find($request->subcategory_id);
                $product->category_id = $request->subcategory_id;
                 

            }
            else
            {
                $cattype = Category::find($request->category_id);
                $product->category_id = $request->category_id;
                 
            }

            $product->buy_price = $request->buy_price;
            $product->sell_price = $request->sell_price;
            $product->discount_type = $request->discount_type;
            $product->discount = $request->discount;
            if($request->discount_type==1)
            {
                $product->discount_price =$request->sell_price - $request->discount;
            }
            elseif($request->discount_type==2)
            {
                $product->discount_price = ($request->sell_price - (($request->sell_price*$request->discount)/100));      
            }

            $product->price_active = $request->price_active;
            $product->short_discription = $request->short_discription;
            $product->long_discription = $request->long_discription;
            
            $image = $request->file('default_image');

            if($image){
                 $uniqname = uniqid();
                 $ext = strtolower($image->getClientOriginalExtension());
                 $filepath = 'public/images/products/';
                 $imagename = $filepath.$uniqname.'.'.$ext;
                 /*@unlink($data->photo);*/
                $image->move($filepath,$imagename);
                $product->default_image = $imagename;
            }



            $product->status    =  $request->status;
            $product->is_admin  =  Auth::user()->id;
            $product->is_delete =  0;
            $result =  $product->save();




                    /* =====================             for multi image upload ============================ */
        if($request->product_image!=null){
            if($input['product_image'] != ''){
               foreach ($input['product_image'] as $key => $value) {
                
                    $productImage = new ProductImage;

                    $productImage->product_id = $product->id;

                        if ($value) {
                            $file = $value;

                             $uniqname = uniqid();
                             $ext = strtolower($image->getClientOriginalExtension());
                             $filepath = 'public/images/products/';
                             $file = $filepath.$uniqname.'.'.$ext;
                             /*@unlink($data->photo);*/
                            $image->move($filepath,$file);
                            $productImage->image = $file;

                        } else { $productImage->images = 'default.png'; }  

                    $productImage->save();
                }
            }
        }


 

            if($result)
            {
                $notification = array(
                    'message' => 'Product Entry Successfully!',
                    'alert-type' => 'success'
                );
                return redirect()->back()->with($notification);
            }

            return redirect()->route('product.index');


            

        } /*validator ending*/

    }

   

    public function subcategory(Request $request)
    {
        $category_id = $request->category_id;

        $categoryHtmlOption = "<option value=''> Select Sub Category</option>";

   

        $categories = Category::where([['p_id',$category_id]])->get();


        foreach ($categories as $subcategory) {
            $categoryHtmlOption .= "<option value='$subcategory->id'>$subcategory->cat_name</option>";
        }
      
      return ($categoryHtmlOption);
    
    }






    public function show($id)
    {
         $data['product'] = Product::where('status',1)->first();
         return view('backend.products.show',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {    $data['categories'] = Category::where('status',1)->get();
         $data['product'] = Product::where('status',1)->first();
         return view('backend.products.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
         $validator = Validator::make($request->all(), [
            'product_title' => 'required',
            'product_slug' => 'required|unique:products,product_slug,'.$id,
            'category_id' => 'required',
            'buy_price' => 'required',
            'sell_price' => 'required',
            'short_discription' => 'required',
            'long_discription' => 'required',
            'status' => 'required',
                  
                  
        ]);

        if ($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        } 
        else{

            $checkproductidcount = Product::orderBy('id','DESC')->count();
            $checkproductid = Product::orderBy('id','DESC')->first();
 

            $product = Product::find($id);

            $product->product_title = $request->product_title;
         
            $product->product_slug = $request->product_slug;
            
            if($request->subcategory_id!=null)
            {
                $cattype = Category::find($request->subcategory_id);
                $product->category_id = $request->subcategory_id;
                

            }
            else
            {
                $cattype = Category::find($request->category_id);
                $product->category_id = $request->category_id;
                
            }
            
            $product->buy_price = $request->buy_price;
            $product->sell_price = $request->sell_price;
            $product->discount_type = $request->discount_type;
            $product->discount = $request->discount;
            if($request->discount_type==1)
            {
                $product->discount_price =$request->sell_price - $request->discount;
            }
            elseif($request->discount_type==2)
            {
                $product->discount_price = ($request->sell_price - (($request->sell_price*$request->discount)/100));      
            }

            $product->price_active = $request->price_active;
            $product->short_discription = $request->short_discription;
            $product->long_discription = $request->long_discription;
            


            if ($request->hasFile('default_image')) 
            {
                $file = $request->file('default_image');
                $extension = $file->getClientOriginalExtension();
                $filename = "Product_".str_random().time().'.'.$extension;
                $file->move('public/backend/products/',$filename);      
                $product->default_image = $filename;
            }
         
            $product->status    =  $request->status;
            $result =   $product->save();

           if($result)
            {
                $notification = array(
                    'message' => 'Product Update Successfully!',
                    'alert-type' => 'success'
                );
              return redirect()->route('product.index');
            }

           

        } /*validator ending*/
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        ProductImage::where('product_id',$id)->delete();
       $result =  Product::find($id)->delete();

         if($result)
            {
                $notification = array(
                    'message' => 'Product Delete Successfully!',
                    'alert-type' => 'success'
                );
                return redirect()->back()->with($notification);
            }

            return redirect()->route('product.index');
     }
}
