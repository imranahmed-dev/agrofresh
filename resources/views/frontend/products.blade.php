@extends('welcome')
@section('title',$sitesetting->sologan)
@section('content')

<section class="breadcrumb-section set-bg" data-setbg="{{asset('public/frontend')}}/img/breadcrumb.jpg" style="background-image: url(&quot;img/breadcrumb.jpg&quot;);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2 style="font-size:33px">Products</h2>
                    <div class="breadcrumb__option">
                        <a href="{{url('/')}}">Home</a>
                        <span>Products</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="product__discount pb-1">
                    <div class="section-title product__discount__title">
                        <h2 style="font-size:30px;">Products</h2>
                    </div>
                </div>
                <div class="row">
                   @if($productscount == null)
                   <div class="col">
                       <h5 class="text-danger">Products Not Available !</h5>
                   </div>
                   @else
                    @foreach($products as $product)
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="product__discount__item mb-3">
                            <div class="product__discount__item__pic set-bg" data-setbg="{{asset($product->default_image) }}" style="background-image: url({{asset($product->default_image) }});">
                                @if($product->price_active == 2)
                                <div class="product__discount__percent">-৳{{$product->discount}}</div>
                                @endif
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a class="addcart" href="javascript:;" id="{{$product->id}}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__discount__item__text">
                                <span>{{ $product->category->cat_name }}</span>
                                <h5><a href="{{route('product.details', $product->product_slug)}}"> {{ $product->product_title }} </a></h5>
                                @if($product->price_active == 1)
                                <div class="product__item__price">৳ {{$product->sell_price}}</div>
                                @elseif($product->price_active == 2)
                                <div class="product__item__price">৳ {{$product->discount_price}} <span>৳ {{$product->sell_price}}</span></div>
                                @endif

                            </div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
                <div class="d-flex justify-content-center mt-3">
                    {!! $products->links() !!}
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->


@endsection
