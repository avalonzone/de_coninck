@extends('layouts.app')

@section('title', 'De Coninck - Grape')

@section('content')
<div class="container">
    <table class="table table-bordered">
        <thead>
            <th>Nom</th>
            <th>Année</th>
            <th>Prix</th>
            <th>Cépage</th>
            <th>Couleur</th>
            <th width="200px">Operation</th>
        </thead>
        <tbody>
            @foreach ($wines as $wine)
            <tr>
            <td> {{ $wine->name }} </td>
            <td> {{ $wine->year }} </td>
            <td> {{ $wine->price }}€</td>
            <td> {{ $wine->grape->name }}</td>
            <td> {{ $wine->type->name }}</td>
            <td>
                    <form action="{{ route('wines.destroy', $wine->id )}}" method="POST">
                        <a class="btn btn-secondary btn-sm" href="{{ route('wines.show', $wine->id) }}">Voir</a>
                        <a class="btn btn-secondary btn-sm " href="{{ route('wines.edit', $wine->id) }}">Editer</a>
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm">Effacer</button>
                    </form>
            </td>
            </tr>
            @endforeach
        </tbody>
        <tfoot>
            <!-- Placeholde Table Footer !-->
        </tfoot>
    <table>
</div>

{{ $wines->links() }}
@endsection
