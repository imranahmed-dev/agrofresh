@extends('welcome')
@section('content')
@php
$route = Route::current()->getName();
@endphp
<!--start profile section -->
<section class="customer-dashboard clearfix py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="card customer-dashboard-menu mb-3 mb-md-0">
                    <div class="card-header bg-dark text-light customer-menu-header">
                        <h4 class="m-0 text-light">My account</h4>
                    </div>
                    <ul>
                       
                        <li><a class="@if($route == 'author.dashboard') customer-menu-active @endif" href="{{route('author.dashboard')}}"><i class="fa fa-tachometer"></i> Dashboard</a></li>
                        
                        <li><a class="@if($route == 'author.orderlist')  customer-menu-active  @endif" href="{{route('author.orderlist')}}"><i class="fa fa-first-order"></i> My Order</a></li>
                        <li><a href="{{ route('logout') }}" onclick="event.preventDefault();  document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i> Logout</a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </li>
                    </ul>
                </div>
            </div>

            @yield('dashboard')

        </div>
    </div>
</section>
<!--end profile section -->

@endsection
