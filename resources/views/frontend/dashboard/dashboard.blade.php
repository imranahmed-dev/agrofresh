@extends('frontend.dashboard.dashboard-master')
@section('title',$sitesetting->sologan)
@section('dashboard')

<div class="col-md-9">
    <div class="customer-dashboard-body">
        <div class="row">
            <div class="col-md-3">
                <div class="card dashboard-box bg-primary mb-2 mb-md-0">
                    <div class="dashbox-txt">
                        <span>10</span>
                        <p>All Post</p>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card dashboard-box bg-success  mb-2 mb-md-0">
                    <div class="dashbox-txt">
                        <span>20</span>
                        <p>All Comments</p>
                    </div>
                    <a href="" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card dashboard-box bg-info   mb-2 mb-md-0">
                    <div class="dashbox-txt">
                        <span>10</span>
                        <p>All Views</p>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card dashboard-box bg-info   mb-2 mb-md-0">
                    <div class="dashbox-txt">
                        <span>10</span>
                        <p>Services</p>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
