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
  <img src="images/Logo.png" alt="logo" class="img-responsive logo-index">
  </div>
 

@endsection
 <footer class="footer">
    <img src="images/Autres/logo_interdiction.png" alt="logo interdiction">
    <p>Attention ! L'abus d'alcool est dangereux pour la santé, consommez avec modération !</p>
</footer>
