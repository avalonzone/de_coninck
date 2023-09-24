@extends('layouts.app')

@section('title', 'De Coninck - Se connecter')

@section('content')
<div class="container">
    <form action="{{ route('auth.authenticate') }}" method="post">
        @csrf
        <div class="card">
            <div class="card-header">
                <strong>Connexion</strong>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class='col-10'>
                        <label for="inputEmailId" class="form-label">Identifiant</label>
                        <input type="text" class="form-control" id="inputEmailId" placeholder="Entrez votre identifiant" name="email"/>
                        @if ($errors->has('email'))
                            <span class="text-danger">{{ $errors->first('email') }}</span>
                        @endif
                    </div>
                    <div class='col-10'>
                        <label for="inputPasswordId" class="form-label">Identifiant</label>
                        <input type="password" class="form-control" id="inputPasswordId" placeholder="Entrez votre mot de passe" name="password"/>
                        @if ($errors->has('password'))
                            <span class="text-danger">{{ $errors->first('password') }}</span>
                        @endif
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <input type="submit" class="col-md-3 offset-md-5 btn btn-primary" value="Connexion">
            </div>
        </div>
    </form>
</div>
@endsection
