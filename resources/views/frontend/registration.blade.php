@extends('welcome')
@section('title',$sitesetting->sologan)
@section('content')

<section class="regi-page py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="regi-page-form card" style="padding:40px">

                    <form action="{{route('registration.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <h4 class="mb-3">User Registration</h4>

                        <label for="#">Name</label>
                        <input class="form-control mb-2" type="text" name="name" placeholder="Enter name">
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('name'))?($errors->first('name')):''}}</div>
                        
                        <label for="#">Email</label>
                        <input class="form-control mb-2" type="email" name="email" placeholder="Enter email">
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('email'))?($errors->first('email')):''}}</div>

                        <label for="#">Mobile Number</label>
                        <input class="form-control mb-2" type="text" name="mobile_number" placeholder="Mobile number">
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('mobile_number'))?($errors->first('mobile_number')):''}}</div>

                        <label for="#">Profile Picture</label>
                        <input id="image" class="form-control mb-2" type="file" name="profile_picture">
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('profile_picture'))?($errors->first('profile_picture')):''}}</div>

                        <img style="padding:4px;border:1px solid gray;" width="250" id="showImage" class="mt-2 img-fluid mb-3" src="{{url('public/uploaded/user_default/no-image-icon.png')}}" alt="User profile picture"><br>

                        <label for="#">Address</label>
                        <textarea class="form-control mb-2" name="address" id="#" cols="30" rows="3" placeholder="Address"></textarea>
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('address'))?($errors->first('address')):''}}</div>
                        
                        <label for="#">Password</label>
                        <input class="form-control mb-2" type="password" name="password" placeholder="Password">
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('password'))?($errors->first('password')):''}}</div>
                        
                        <label for="#">Confirm Password</label>
                        <input class="form-control mb-2" type="password" name="password_confirmation" placeholder="Confirm password">
                        <div style='color:red; padding: 0 5px;'>{{($errors->has('password_confirmation'))?($errors->first('password_confirmation')):''}}</div>

                        <button class="btn btn-primary" type="submit">Submit</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
