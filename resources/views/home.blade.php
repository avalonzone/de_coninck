@extends('layouts.app')

@section('title', 'De Coninck - Accueil')

@section('content')
    <div class="card" style="width:100%">
        <img class="card-img-top" src="{{ asset('images/BANNERS-Enews-1-1.png') }}" alt="Card image">
        <div class="card-body">
        <h4 class="card-title">Créateur de Sensations depuis 1886</h4>
        <p class="card-text">Créée en 1886, la Maison De Coninck possède un formidable assortiment de plus de 500 000 bouteilles. Leader sur le marché belge, 6 boutiques contemporaines et 1 boutique en-ligne, De Coninck Wine offre un service et une expertise haut de gamme. Avec son chai hypermoderne aux conditions optimales, de plus de 10 000 m2, nos agents vous livrent sur toute la Belgique.</p>
        <a href="{{ route('wine') }}" class="btn btn-primary">Consulter notre sélection</a>
        </div>
    </div>
@endsection
