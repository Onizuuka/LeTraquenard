@extends('layouts.master')

@section('title')
    Connectez-vous
@endsection

@section('content')
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h1>Connectez-vous</h1>
            @if(count($errors) > 0)
                <div class="alert alert-danger">
                    @foreach($errors->all() as $error)
                        <p>{{ $error }}</p>
                    @endforeach
                </div>
            @endif
            <form action="{{ route('user.signin') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="email">E-mail : </label>
                    <input type="text" id="email" name="email" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe : </label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>
                <button class="btn btn-primary">Connexion</button>
            </form>
            <p>Vous n'avez pas encore de compte? <a href="{{ route('user.signup') }}"> Enregistrez-vous</a></p>
        </div>
    </div>
@endsection
