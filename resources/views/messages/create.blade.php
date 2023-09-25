@extends('layouts.app')

@section('title', 'De Coninck - Consulter un message')

@section('content')
<div class="container">
    <form id="messageAjaxForm" action="{{ route('messages.store') }}">
    @csrf
    <div class="card">
        <div class="card-header">
            <strong>Nous envoyez un message</strong>
        </div>
        <div class="card-body">
            <div class="alert alert-danger print-error-msg" style="display:none">
                <ul></ul>
            </div>
            <div class="row gy-3">
                <div class='col-12'>
                    <label for="inputMessageNameId" class="form-label">Nom</label>
                    <input type="text" class="form-control" id="inputMessageNameId" placeholder="Entrez ici votre nom" name="name"/>
                </div>
                <div class='col-12'>
                    <label for="inputMessageEmailId" class="form-label">Courriel</label>
                    <input type="email" class="form-control" id="inputMessageEmailId" placeholder="Entrez ici votre addresse de courriel" name="email"/>
                </div>
                <div class='col-12'>
                    <label for="inputMessagePhoneId" class="form-label">Téléphone</label>
                    <input type="text" class="form-control" id="inputMessagePhoneId" placeholder="Entrez ici votre numéro de téléphone" name="phone"/>
                </div>
                <div class='col-12'>
                    <label for="textAreaMessageId" class="form-label">Message</label>
                    <textarea class="form-control" id="textAreaMessageId"  placeholder="Entrez ici votre message" rows="3" name="message" ></textarea>
                </div>
            </div>
        </div>
        <div class="card-footer">
            <a class="btn btn-secondary" href="{{url()->previous() }}">Retour</a>
            <button type="submit" class="btn btn-primary">Envoyez message</button>
        </div>
    </div>
    </form>
</div>
@endsection
