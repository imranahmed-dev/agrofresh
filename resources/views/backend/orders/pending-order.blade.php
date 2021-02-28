@extends('layouts.app')
@section('title','Pending Orders')
@section('content')


<div class="page-wrapper">
    <div class="page-header">
        <div class="page-header-title">
            <h4></h4>
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
                <li class="breadcrumb-item"><a href="#!"> </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="page-body">

        <!-- Input Group Sizes & Colors card start -->
        <div class="card">
            <div class="card-header">
                <h5>Pending Orders</h5>
            </div>
            <div class="card-block">
                <div class="row">
                    <table id="datatable" class="table table-bordered">
                        <tr>
                            <th>SL</th>
                            <th>Order No</th>
                            <th>Subtotal</th>
                            <th>Delivery Charge</th>
                            <th>Total</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        @foreach($orders as $order)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>#{{ $order->order_no }}</td>
                            <td>{{ $order->order_subtotal }}</td>
                            <td>{{ $order->delivery_charge }}</td>
                            <td>{{ $order->order_total }}</td>
                            <td>
                                @if($order->status == 0)
                                <span class="badge badge-danger">Unapproved</span>
                                @elseif($order->status == 1)
                                <span class="badge badge-success">Approved</span>
                                @endif
                            </td>
                            <td>
                                <a id="approve" href="{{ route('order.approve',$order->id) }}" class="btn btn-success btn-sm"><i class="fa fa-check"></i> Approve</a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
