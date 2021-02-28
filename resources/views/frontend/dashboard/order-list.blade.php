@extends('frontend.dashboard.dashboard-master')
@section('title',$sitesetting->sologan)
@section('dashboard')

<div class="col-md-9">
    <div class="customer-dashboard-body">
        <table class="table table-bordered table-sm">
            <thead class="thead-light">
                <tr>
                    <th>Order No</th>
                    <th>Sub Total</th>
                    <th>Delivery Charge</th>
                    <th>Total</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
               @foreach($orders as $order)
                <tr>
                    <td>#{{$order->order_no}}</td>
                    <td>৳ {{$order->order_subtotal}}</td>
                    <td>৳ {{$order->delivery_charge}}</td>
                    <td>৳ {{$order->order_total}}</td>
                    <td>
                        @if($order->status == 0)
                        <span class="badge badge-danger">Unapproved</span>
                        @elseif($order->status == 1)
                        <span class="badge badge-success">Approved</span>
                        @endif
                    </td>
                    <td>
                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i> Details</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
