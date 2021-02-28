<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Cart;
use Auth;
use App\Models\Order;
use App\Models\OrderDetail;

class OrderController extends Controller
{
    public function store(Request $request){
        if(!Auth::check()){
           return redirect()->route('customer.login')->with($notification);
            
        }else{
            
        $deliverycharge = $request->calculate_shipping;
        $order = new Order;
        
        /*Order Number*/
        $orderData = Order::orderBy('id','desc')->first();
        if($orderData == null){
            $firstReg = '0';
            $order_no = $firstReg+1;
        }else{
            $orderData = Order::orderBy('id','desc')->first()->order_no;
            $order_no = $orderData+1;
        }
        /*Delivery Charge*/
        if($request->calculate_shipping == 'indhaka'){
            $deliverycharge = 60;
        }elseif($request->calculate_shipping == 'outofdhaka'){
            $deliverycharge = 100;
        }
        $order->user_id = Auth::user()->id;
        $order->order_no = $order_no;
        $order->order_subtotal = $request->order_subtotal;
        $order->delivery_charge = $deliverycharge;
        $order->order_total = $request->order_total+$deliverycharge;
        $order->save();
        
            $contents = Cart::content();
            foreach($contents as $content){
                
              $orderDetails = new OrderDetail;
              $orderDetails->order_id = $order->id;
              $orderDetails->product_id = $content->id;
              $orderDetails->quantity = $content->qty;
              $orderDetails->save();
                
            }
            
        Cart::destroy();
        $notification = array(
            'message' => 'Successfully Order Submited !',
            'alert-type' => 'success'
             );
        return redirect()->back()->with($notification);
        
   
      }
    
    }
}
