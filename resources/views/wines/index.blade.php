@extends('layouts.app')

@section('title', 'De Coninck - Consulter la liste des vins')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            Gestion des vins
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <thead>
                    <th></th>
                    <th>Nom</th>
                    <th>Année</th>
                    <th>Prix</th>
                    <th>Cépage</th>
                    <th>Couleur</th>
                    <th width="200px">Operations</th>
                </thead>
                <tbody>
                    @foreach ($wines as $wine)
                    <tr>
                    <td class="align-middle text-center">
                        @if ($wine->source !== "default-wine-150.png")
                            <!-- To Edit !-->
                            <img src="{{ asset('/storage/images/' . $wine->source) }}" alt="" title="Wine bottle" height="50px"/>
                        @else
                            <img src="{{ asset('/images/default-wine-150.png') }}"" alt="" title="Wine bottle" height="50px"/>
                        @endif
                    </td>
                    <td class="align-middle" > {{ $wine->name }} </td>
                    <td class="align-middle"> {{ $wine->year }} </td>
                    <td class="align-middle"> {{ $wine->price }}€</td>
                    <td class="align-middle"> {{ $wine->grape->name }}</td>
                    <td class="align-middle"> {{ $wine->type->name }}</td>
                    <td class="align-middle">
                            <form action="{{ route('wines.destroy', $wine->id )}}" method="POST" id="deleteWineId">
                                <a class="btn btn-secondary btn-sm" href="{{ route('wines.show', $wine->id) }}">Voir</a>
                                <a class="btn btn-secondary btn-sm " href="{{ route('wines.edit', $wine->id) }}">Modifier</a>
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm" data-toggle="confirmation">Effacer</button>
                            </form>
                    </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <div class="card-footer">
            {{ $wines->links() }}
        </div>
    </div>
</div>
@endsection
