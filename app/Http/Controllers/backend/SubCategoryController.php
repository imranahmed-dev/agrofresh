<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Validator;
use Auth;
use Illuminate\Support\Str;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data['maincategories'] = Category::orderBy('id','DESC')->where([['p_id',0],['is_delete',0]])->get();

        $data['categorylist'] = Category::orderBy('id','DESC')->whereNotIn('p_id',[0])->get();

       
         return view('backend.categories.subcategory_view',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.add');  
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $validator = Validator::make($request->all(), [
            'category_id' => 'required',
            'cat_name' => 'required',
            'cat_slug' => 'required|unique:categories',
            'cat_image' => 'required'
                  
        ]);

        if ($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        else{

            $category = New Category;

            $category->cat_name = $request->cat_name;
            $category->cat_slug = $request->cat_slug;
            $category->p_id     = $request->category_id;

            $image = $request->file('cat_image');

            if($image){
                 $uniqname = uniqid();
                 $ext = strtolower($image->getClientOriginalExtension());
                 $filepath = 'public/images/categories/';
                 $imagename = $filepath.$uniqname.'.'.$ext;
                 /*@unlink($data->photo);*/
                $image->move($filepath,$imagename);
                $category->cat_image = $imagename;
            }


             
            $category->status =1;
            $category->is_admin = Auth::user()->id;
            $category->is_delete = 0;

           $result = $category->save();


            if($result)
            {
                $notification = array(
                    'message' => 'Sub category Entry Successfully!',
                    'alert-type' => 'success'
                );
                return redirect()->back()->with($notification);
            }

            return redirect()->route('subcategory.index');

        } /*validator ending*/





    }

    /**
     * Display the specified resource.
     *
     * @param  \App\models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category,$id)
    {
          $data['category'] = Category::find($id);
          return view('admin.category.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category,$id)
    {
          $validator = Validator::make($request->all(), [
            'cat_name' => 'required',
            'cat_slug' => 'required|unique:categories,cat_slug,'.$id,
            'cat_type' => 'required',
            'status' => 'required',
                  
        ]);

        if ($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }
        else{

            $category = Category::find($id);

            $category->cat_name = $request->cat_name;
           
            $category->cat_slug = $request->cat_slug;
            


            $category->p_id = 0;


            if ($request->hasFile('cat_image')) 
            {
                $file = $request->file('cat_image');
                $extension = $file->getClientOriginalExtension();
                $filename = "category_".str_random().time().'.'.$extension;
                $file->move('public/backend/images/',$filename);      
                $category->cat_image = $filename;
            }
            
            $category->cat_type =$request->cat_type;
            $category->status =$request->status;
            $category->is_admin = Auth::user()->id;
            $category->is_delete = 0;

            $category->save();


            Session::flash('success','Category Update Successfully');


            return redirect('admin/categories');

        } /*validator ending*/
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category,$id)
    {

          $product = Product::where('category_id',$id)->first();

      if($product!=null){

         if(file_exists("/backend/products/".$product->image)) {

            unlink(public_path()."/backend/products/".$product->default_image);

         }

        $productimage = ProductImage::where('product_id',$product->id)->first();

         if($productimage!=null){

            if(file_exists("/backend/products/".$productimage->image)) {
              unlink(public_path()."/backend/products/".$productimage->image);
            }
         $productimage->delete();
        }

          $product->delete();
      }



    


         $findcat = Category::find($id);

         unlink(public_path()."/backend/images/".$findcat->cat_image);

         $findcat->delete();
 

         Session::flash('success','Category Delete Successfully');
         return redirect('admin/categories'); 
    }
}
