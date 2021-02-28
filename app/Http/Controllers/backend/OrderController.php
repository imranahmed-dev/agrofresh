<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    public function pendingindex(){
        $data['orders'] = Order::where('status',0)->get();
        return view('backend.orders.pending-order',$data);
    }
    public function approvedindex(){
        $data['orders'] = Order::where('status',1)->get();
        return view('backend.orders.approved-order',$data);
    }
    public function approve($id){
        $order = Order::find($id);
        $order->status = 1;
        $order->save();
        
        $notification = array(
            'message' => 'Order Approved!',
            'alert-type' => 'success'
        );
         return redirect()->back()->with($notification);
    }
}
