@extends('layouts.app')

@section('title', 'De Coninck - Consulter un message')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            Message de : <strong>{{ $message->name }}</strong>
        </div>
        <div class="card-body">
            <dl class="row">
                <dt class="col-1">Date</dt>
                <dd class="col-11">{{ $message->updated_at }}</dd>
                <dt class="col-1">Courriel</dt>
                <dd class="col-5"><a href="mailto:{{ $message->email }}">{{ $message->email }}</a></dd>
                <dt class="col-1">Téléphone</dt>
                <dd class="col-5">{{ $message->phone }}</dd>
                <dt class="col-1">Message</dt>
                <dd class="col-11">{{ $message->message }}</dd>
            </dl>
        </div>
        <div class="card-footer">

            <a class="btn btn-secondary" href="{{url()->previous() }}">Retour</a>
        </div>
    </div>
</div>
@endsection
