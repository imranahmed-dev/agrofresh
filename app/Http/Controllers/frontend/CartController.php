<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Cart;
use DB;
use Session;

class CartController extends Controller
{
    public function store($id)
    {   
        $product = Product::where('id', $id)->first();

        $data['qty'] = 1;
        $data['id'] = $id;
        $data['name'] = $product->product_title;
        if($product->price_active==1){
            $data['price'] = $product->sell_price;
        }else{
            $data['price'] = $product->discount_price;
        }

        $data['weight'] = 0;

        $data['options']['image'] = $product->default_image;
        $data['options']['product_slug'] = $product->product_slug;
        

        Cart::add($data);
        
        return response()->json($data);
    }
    public function get(){
        $data = Cart::count();
        return view('frontend.cart_qty_ajax.cart-add', compact('data'));
     }
    public function cartableProduct(){
        $cartproducts = Cart::content();
        return view('frontend.cartable_product_ajax.cartable-product', compact('cartproducts'));
     }
    public function index(){
      return view('frontend.cart');
   }
    public function cartamount(){
      return view('frontend.cart_amount_ajax.cart-amount');
   }
    
    public function cartupdate(Request $request){
        $qty = $request->qty;
        $id = $request->id;
        
        $data = Cart::update($id,['qty' => $qty]);
        return response()->json($data); 

    }
    
    public function destroy($id) {
        
       $data = Cart::remove($id);

        return response()->json($data);
    }
    
    public function carttotal(){
        return view('frontend.cart_total_ajax.cart-total');
    }
    
    public function singlecart(Request $request, $id){
        $product = Product::where('id', $id)->first();
        
        $qty = $request->qty;
        
        $data['qty'] = $qty;
        $data['id'] = $id;
        $data['name'] = $product->product_title;
        if($product->price_active==1){
            $data['price'] = $product->sell_price;
        }else{
            $data['price'] = $product->discount_price;
        }

        $data['weight'] = 0;

        $data['options']['image'] = $product->default_image;
        $data['options']['product_slug'] = $product->product_slug;
        

        Cart::add($data);
        
        return response()->json($data);
    }
    
}
