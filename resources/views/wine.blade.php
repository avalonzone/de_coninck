@extends('layouts.app')

@section('title', 'De Coninck - Wine')

@section('content')
    <div class="card">
        <div class="card-header">
            <strong>Nos classiques</strong>
        </div>
        <div class="card-body">
            <table class="table table-bordered" id="winesDatatableId">
                <thead>
                    <th>Nom</th>
                    <th>Année</th>
                    <th>Prix</th>
                    <th>Cépage</th>
                    <th>Couleur</th>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <div class="card-footer">
        </div>
    </div>
@endsection
