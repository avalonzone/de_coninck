@extends('layouts.app')

@section('title', 'De Coninck - Contact')

@section('content')
    <div class="card">
        <div class="card-header">
            <strong>NOUS CONTACTER</strong>
        </div>
        <div class="card-body">
            <dl class="row">
                <dt class="col-2">Remarque</dt>
                <dd class="col-10"><p>Pour toutes demandes d’informations, nos conseillers sont là pour vous répondre. Contactez-nous maintenant par email ou par téléphone.</p></dd>
                <dt class="col-2">Support Email</dt>
                <dd class="col-10"><a href="mailto:info@deconinckwine.com">info@deconinckwine.com</a></dd>
                <dt class="col-2">Support Téléphone</dt>
                <dd class="col-10">Tel: +32 2 353 07 65</dd>
            </dl>
        </div>
        <div class="card-footer">
            <a class="btn btn-secondary" href="{{ route('home') }}">Retour</a>
            <a class="btn btn-primary" href="{{ route('messages.create') }}">Nous envoyez un message</a>
        </div>
    </div>
@endsection
