@extends('layouts.app')

@section('title', 'De Coninck - Wine')

@section('content')
        <table class="table table-bordered">
            <thead>
                <th>Nom</th>
                <th>Année</th>
                <th>Prix</th>
                <th>Cépage</th>
                <th>Couleur</th>
            </thead>
            <tbody>
                @foreach ($wines as $wine)
                <tr>
                    <td> {{ $wine->name }} </td>
                    <td> {{ $wine->year }} </td>
                    <td> {{ $wine->price }}€</td>
                    <td> {{ $wine->grape->name }}</td>
                    <td> {{ $wine->type->name }}</td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    {{ $wines->links() }}
@endsection
