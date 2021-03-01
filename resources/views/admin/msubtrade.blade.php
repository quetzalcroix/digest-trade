<?php
if (Auth('admin')->User()->dashboard_style == "light") {
    $text = "dark";
} else {
    $text = "light";
}
?>
@extends('layouts.app')
    @section('content')
        @include('admin.topmenu')
        @include('admin.sidebar')
        <div class="main-panel bg-{{Auth('admin')->User()->dashboard_style}}">
            <div class="content">
                <div class="page-inner">
                    <div class="mt-2 mb-4">
                    <h1 class="title1 text-{{$text}}">Manage Subscription</h1>
                    </div>
                    @if(Session::has('message'))
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="alert alert-info alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <i class="fa fa-info-circle"></i> {{Session::get('message')}}
                            </div>
                        </div>
                    </div>
                    @endif
        
                    @if(count($errors) > 0)
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="alert alert-danger alert-dismissable" role="alert" >
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                @foreach ($errors->all() as $error)
                                <i class="fa fa-warning"></i> {{ $error }}
                                @endforeach
                            </div>
                        </div>
                    </div>
                    @endif
                    {{-- <div class="row mb-5">
                        <div class="col">
                            <form class="form-inline" role="form" method="post" action="{{action('Admin\HomeController@searchsub')}}">
                                <a class="btn btn-{{$text}} m-2" href="{{ url('admin/dashboard/msubtrade') }}">Show all</a>
                                <input placeholder="Search Subscription" class="form-control bg-{{Auth('admin')->User()->dashboard_style}} text-{{$text}} shadow-sm" type="text" name="searchItem" required>
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <input type="hidden" name="type" value="user">
                                <input type="submit" class="btn btn-{{$text}} m-2" value="Search">
                          </form> 
                        </div>
                    </div> --}}
                    <div class="row mb-5">
                        <div class="col p-4 card shadow bg-{{Auth('admin')->User()->dashboard_style}}">
                            <div class="table-responsive" data-example-id="hoverable-table">
                                <table id="ShipTable" class="table table-hover text-{{$text}}"> 
                                    <thead> 
                                        <tr> 
                                            <th>MT4 ID</th>
                                            <th>MT4 Password</th>
                                            <th>Account Type</th>
                                            <th>Currency</th>
                                            <th>Leverage</th>
                                            <th>Server</th>
                                            <th>Duration</th>
                                            <th>Submitted at</th>
                                            <th>Started at</th>
                                            <th>Expiring at</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr> 
                                    </thead> 
                                    <tbody> 
                                    @foreach($subscriptions as $sub)
                                    <tr>
                                        <td>{{$sub->mt4_id}}</td>
                                            <td>{{$sub->mt4_password}}</td>
                                            <td>{{$sub->account_type}}</td>
                                            <td>{{$sub->currency}}</td>
                                            <td>{{$sub->leverage}}</td>
                                            <td>{{$sub->server}}</td>
                                            <td>{{$sub->duration}}</td>
                                            <td>{{\Carbon\Carbon::parse($sub->created_at)->toDayDateTimeString()}}</td>
                                            <td>{{\Carbon\Carbon::parse($sub->start_date)->toDayDateTimeString()}}</td>
                                            <td>{{\Carbon\Carbon::parse($sub->end_date)->toDayDateTimeString()}}</td>
                                            <td>{{$sub->status}}</td>
                                            <td>
                                                <a href="{{ url('admin/dashboard/confirmsub') }}/{{$sub->id}}" class="btn btn-primary btn-sm mb-2">Process</a>
                                                <a href="{{ url('admin/dashboard/delsub') }}/{{$sub->id}}" class="btn btn-danger btn-sm">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody> 
                                </table>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>
    @endsection