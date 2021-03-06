@extends('layouts.master')

@section('title')
    Enregistrez-vous
@endsection

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h1>Enregistrez-vous</h1>
            @if(count($errors) > 0)
                <div class="alert alert-danger">
                    @foreach($errors->all() as $error)
                        <p>{{ $error }}</p>
                    @endforeach
                </div>
            @endif
            <form action="{{ route('user.signup') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="name">Nom: </label>
                    <input type="text" id="name" name="name" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email">E-mail: </label>
                    <input type="text" id="email" name="email" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe: </label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>
                <button class="btn btn-primary">Enregistrez-vous</button>
            </form>
            <p>Vous avez déja un compte? <a href="{{ route('user.signin') }}"> Connectez-vous</a></p>
        </div>
    </div>
    @endsection
