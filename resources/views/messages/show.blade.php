@extends('layouts.app')

@section('title', 'De Coninck - Message')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            Message de
        </div>
        <div class="card-body">
        </div>
        <div class="card-footer">
            <a class="btn btn-secondary" href="{{ route('messages.index') }}">Retour</a>
        </div>
    </div>
</div>
@endsection
