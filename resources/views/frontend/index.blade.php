@extends('welcome')
@section('title',$sitesetting->sologan)
@section('content')

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">

                @foreach($categories as $category)
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="{{ asset($category->cat_image)}}">
                        <h5><a href="{{ route('catproducts',$category->cat_slug) }}">{{ $category->cat_name }}</a></h5>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!--latest products-->
<section class="product spad pb-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2 style="font-size:28px;">Latest Products</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            @foreach($products as $product)
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

<!--Food For Health-->
<section class="product spad pt-1 pb-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2 style="font-size:28px;">Food For Health</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            @foreach($foodhealth as $product)
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

<!--Dry Fish-->
<section class="product spad pt-1 pb-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2 style="font-size:28px;">Dry Fish</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            @foreach($dryfish as $product)
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

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="{{ asset(" public/frontend") }}/img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="{{ asset(" public/frontend") }}/img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>From The Blog</h2>
                </div>
            </div>
        </div>
        <div class="row">


            @foreach($blogs as $blog)
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="{{ asset($blog->image)}}" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> {{ $blog->created_at->format('Y-m-d') }}</li>

                        </ul>
                        <h5><a href="#">{{ $blog->title }}</a></h5>

                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</section>
<!-- Blog Section End -->





<!--Why Shop With Us-->
<section class="why-shop py-5 text-light" style="background: #59793D;">
    <div class="container">
        <div class="row">
            <div class="col">
                <h4 class="text-center text-light mb-4" style="font-weight: 600;">WHY SHOP WITH US?</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 align-self-center">
                <div class="wh-left mb-3">
                    <a href="#">
                        <div class="row flex-column-reverse flex-md-row">
                            <div class="col-md-9">
                                <div class="whl-txt">
                                    <h5 class="mb-2"><strong>Safe Food</strong></h5>
                                    <p>We focus on ensuring sound health by delivering adulteration, additives & chemical free pure food at consumers’ doorstep.</p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="whl-img">
                                    <img src="{{ asset('public/frontend') }}/images/healdy-1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="wh-left mb-3">
                    <a href="#">
                        <div class="row flex-column-reverse flex-md-row">
                            <div class="col-md-9">
                                <div class="whl-txt">
                                    <h5 class="mb-2"><strong>Fresh Food</strong></h5>
                                    <p>We try to keep our foods organic and fresh. Our aim is making safe foods available to as many people as possible.</p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="whl-img">
                                    <img src="{{ asset('public/frontend') }}/images/icon-2-03-70x70-1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="wh-left mb-3">
                    <a href="#">
                        <div class="row flex-column-reverse flex-md-row">
                            <div class="col-md-9">
                                <div class="whl-txt">
                                    <h5 class="mb-2"><strong>Quickest Delivery</strong></h5>
                                    <p>We would love to make our consumers feel like shop next to their door by ensuring quickest delivery service.</p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="whl-img">
                                    <img src="{{ asset('public/frontend') }}/images/icon-2-04-70x70-1.png" alt="">
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="wh-img-box">
                    <img src="{{ asset('public/frontend') }}/images/Footer-image.jpg" class="img-fluid" alt="">
                </div>
            </div>
            <div class="col-md-4 align-self-center">
                <div class="wh-left mb-3">
                    <a href="#">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="whl-img">
                                    <img src="{{ asset('public/frontend') }}/images/honey-1.png" alt="">
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="whl-txt whl-txt-left">
                                    <h5 class="mb-2"><strong>Honesty & Integrity</strong></h5>
                                    <p>Our aim is to earn halal income for our stakeholders through doing business with integrity & honestly in a fair manner.</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="wh-left mb-3">
                    <a href="#">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="whl-img">
                                    <img src="{{ asset('public/frontend') }}/images/environmantal-1.png" alt="">
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="whl-txt whl-txt-left">
                                    <h5 class="mb-2"><strong>Environmental safety</strong></h5>
                                    <p>We always work on keeping a healthy environment for our employees. We dump and recycle our wastes in proper manner.</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="wh-left mb-3">
                    <a href="#">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="whl-img">
                                    <img src="{{ asset('public/frontend') }}/images/healdy-1.png" alt="">
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="whl-txt whl-txt-left">
                                    <h5 class="mb-2"><strong>Healthy Food Habit</strong></h5>
                                    <p>Building a society & community with sound mind, mentality and health by developing healthy food habit</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Why Shop With Us-->


@endsection
