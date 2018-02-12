@extends('layouts.master')

@section('title')
  Le Traquenard
@endsection

@section('content')
  @if(Session::has('success'))
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div id="charge-message" class="alert alert-success">
        {{ Session::get('success') }}
      </div>
    </div>
  </div>
  @endif
  <div class="col-md-6 col-md-offset-3">
  <h1>Bienvenue sur "Le Traquenard"</h1>
  <img src="images/Logo.png" alt="logo" class="img-responsive">
  </div>
@endsection
