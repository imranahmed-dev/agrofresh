<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\Blog;
use Validator;
use Auth;
use App\User;

class FrontendController extends Controller
{

    public function index()
    {
    	$data['categories'] = Category::where('status',1)->get();
    	$data['products'] = Product::where('status',1)->latest()->get();
    	$data['foodhealth'] = Product::where('status',1)->where('category_id',3)->get();
    	$data['dryfish'] = Product::where('status',1)->where('category_id',2)->get();
    	$data['blogs'] = Blog::where('status',1)->get();
    	return view('frontend.index',$data);
    }
    public function customerRegistration(){
        return view('frontend.registration');
    }
    public function customerLogin(){
        return view('frontend.login');
    }
    
     public function RegistrationStore(Request $request){
        $this->validate($request,[
            'email' => 'required|unique:users,email',
            'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6',
            'mobile_number' => 'required|unique:users,mobile'
        ]);
        $data = new User;
        $data->role = 2;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->mobile = $request->mobile_number;
        $data->address = $request->address;
        $data->password = bcrypt($request->password);
        $image = $request->file('profile_picture');
        if($image){
            $uniqname = uniqid();
            $ext = strtolower($image->getClientOriginalExtension());
            $filepath = 'public/uploaded/user_image/';
            $imagename = $filepath.$uniqname.'.'.$ext;
            $image->move($filepath,$imagename);
            
            $data->photo = $imagename;
        }
        $data->save();
        
        $notification = array(
            'message' => 'Registration Successfully!',
            'alert-type' => 'success'
             );
        return redirect()->back()->with($notification);
        
    }
    
    public function productDetails($slug){
        $data['product'] = Product::where('product_slug',$slug)->first();
         $productId = $data['product']->id;
         $category_id = $data['product']->category_id;
        $data['relatedProducts'] = Product::where('category_id',$category_id)->get();
        $data['productImages'] = ProductImage::where('product_id',$productId)->get();
        return view('frontend.product-details',$data);
    }
    
    public function products(){
        $data['products'] = Product::where('status',1)->paginate(4);
        $data['productscount'] = Product::where('status',1)->count();
        return view('frontend.products',$data);
    }
    
    public function catproducts($slug){
        $id = Category::where('cat_slug',$slug)->first()->id;
        $data['products'] = Product::where('status',1)->where('category_id',$id)->paginate(4);
        $data['productscount'] = Product::where('status',1)->where('category_id',$id)->count();
        return view('frontend.products',$data);
    }
    
    public function contactus(){
        return view('frontend.contact');
    }
    
    public function blogs(){
        $data['blogs'] = Blog::where('status',1)->latest()->paginate(4);
        $data['blogscount'] = Blog::where('status',1)->count();
        return view('frontend.blogs',$data);
    }
}















