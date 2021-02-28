@extends('welcome')
@section('title',$sitesetting->sologan)
@section('content')
<section class="breadcrumb-section set-bg" data-setbg="{{asset('public/frontend')}}/img/breadcrumb.jpg" style="background-image: url(&quot;img/breadcrumb.jpg&quot;);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2 style="font-size:33px">{{$product->product_title}}</h2>
                    <div class="breadcrumb__option">
                        <a href="#">Home</a>
                        <span>{{$product->product_title}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large" src="{{asset($product->default_image)}}" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        @foreach($productImages as $productImage)
                        <img data-imgbigurl="{{asset($productImage->image)}}" src="{{asset($productImage->image)}}" alt="">
                        @endforeach

                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>{{$product->product_title}}</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 reviews)</span>
                    </div>
                    @if($product->price_active == 1)
                    <div class="product__details__price">৳ {{$product->sell_price}}</div>
                    @elseif($product->price_active == 2)
                    <div class="product__details__price">৳ {{$product->discount_price}} <small class="text-muted" style="font-size:16px"><del>৳ {{$product->sell_price}}</del></small></div>
                    @endif
                    <p>{!!$product->short_discription!!}</p>
                    <div class="product__details__quantity" style="width:110px;">
                        <div class="quantity">
                            <input id="singleqty" type="number" value="1" min="1" class="form-control">
                        </div>
                    </div>
                    <a href="javascript:;" class="primary-btn singlecart" id="{{$product->id}}">ADD TO CARD</a>
                    <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                    <ul>
                        <li><b>Availability</b> <span>In Stock</span></li>
                        <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                        <li><b>Share on</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Products Infomation</h6>
                                <p>{!!$product->long_discription!!}</p>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Products Infomation</h6>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!--Food For Health-->
<section class="product spad pt-1 pb-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2 style="font-size:28px;">Related Products</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            @foreach($relatedProducts as $product)
                            <div class="col-lg-4">
                                <div class="product__discount__item">
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
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

@endsection
