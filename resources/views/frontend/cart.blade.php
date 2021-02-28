@extends('welcome')
@section('title',$sitesetting->sologan)
@section('content')

<section class="breadcrumb-section set-bg" data-setbg="{{asset('public/frontend')}}/img/breadcrumb.jpg" style="background-image: url(&quot;img/breadcrumb.jpg&quot;);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2 style="font-size:33px">Shopping Cart</h2>
                    <div class="breadcrumb__option">
                        <a href="#">Home</a>
                        <span>Shopping Cart</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                            <tr>
                                <th class="shoping__product">Products</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="cartableProduct">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="cartTotal">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="{{url('/')}}" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li>Subtotal <span>৳ {{ Cart::subtotal() }}</span></li>
                            <li>Total <span> ৳ {{ Cart::total() }}</span></li>
                        </ul>
                        <form action="{{route('order.store')}}" method="post">
                            @csrf
                            <div class="form-group">
                                <input type="hidden" name="order_subtotal" value="{{ Cart::subtotal() }}">
                                <input type="hidden" name="order_total" value="{{ Cart::total() }}">
                                <label for="">Calculate shipping</label>
                                <select name="calculate_shipping" id="calculate_shipping" class="custom-select" required>
                                    <option value="">Select Your Area</option>
                                    <option value="indhaka">In Dhaka City (৳ 60)</option>
                                    <option value="outofdhaka">Out Of Dhaka City (৳ 100)</option>
                                </select>
                            </div>
                            <button type="submit" class="btn primary-btn btn-block">Confirm Order</button>
                        </form>
                        <p class="mb-1 mt-3"><img width="20" class="mr-2" src="https://www.himelshop.com//front_asset/d.png" alt="">ঢাকা সিটির ভীতরে ডেলিভারি চার্জ ৬০ টাকা।</p>
                        <p class="mb-0"><img width="20" class="mr-2" src="https://www.himelshop.com//front_asset/od.png" alt="">ঢাকা সিটির বাহীরে হলে অগ্রিম ডেলিভারি চার্জ ১০০ টাকা।</p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->


@endsection
