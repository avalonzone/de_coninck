@extends('layouts.app')

@section('title', 'De Coninck - Grape')

@section('content')
<div class="container">
    <table class="table table-bordered">
        <th>Nom</th>
        <th>Année</th>
        <th>Prix</th>
        <th>Cépage</th>
        <th>Couleur</th>
        <th width="10em">Operation</th>
    @foreach ($wines as $wine)
    <tr>
       <td> {{ $wine->name }} </td>
       <td> {{ $wine->year }} </td>
       <td> {{ $wine->price }}€</td>
       <td> {{ $wine->grape->name }}</td>
       <td> {{ $wine->type->name }}</td>
       <td>
            <form action="{{ route('wines.destroy', $wine->id )}}" method="POST">
                <a class="btn btn-info" href="{{ route('wines.show', $wine->id) }}">Voir</a>
                <a class="btn btn-primary" href="{{ route('wines.edit', $wine->id) }}">Editer</a>

                @csrf
                @method('DELETE')

                <button type="submit" class="btn btn-danger">Delete</button>

            </form>
       </td>
    <tr>
    @endforeach
    <table>
</div>

{{ $wines->links() }}
@endsection
