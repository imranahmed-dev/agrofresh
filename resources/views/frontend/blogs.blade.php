@extends('welcome')
@section('title',$sitesetting->sologan)
@section('content')

<section class="breadcrumb-section set-bg" data-setbg="{{asset('public/frontend')}}/img/breadcrumb.jpg" style="background-image: url(&quot;img/breadcrumb.jpg&quot;);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2 style="font-size:33px">Blogs</h2>
                    <div class="breadcrumb__option">
                        <a href="{{url('/')}}">Home</a>
                        <span>Blogs</span>
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
                        <h2 style="font-size:30px;">Blogs</h2>
                    </div>
                </div>
                <div class="row">
                    @if($blogscount == null)
                    <div class="col">
                        <h5 class="text-danger">Blogs Not Available !</h5>
                    </div>
                    @else
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
                    @endif
                </div>
                <div class="d-flex justify-content-center mt-3">
                    {!! $blogs->links() !!}
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->


@endsection
