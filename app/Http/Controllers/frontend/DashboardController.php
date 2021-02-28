<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use Auth;

class DashboardController extends Controller
{
    public function dashboard(){
        return view('frontend.dashboard.dashboard');
    }
    
    public function orderlist(){
        $id = Auth::user()->id;
        $data['orders'] = Order::where('user_id', $id)->get();
        return view('frontend.dashboard.order-list',$data);
    }
}
