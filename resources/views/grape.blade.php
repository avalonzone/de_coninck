@extends('layouts.app')

@section('title', 'De Coninck - Grape')

@section('content')
    <table class="table table-bordered">
        <thead>
            <th>Nom</th>
        </thead>
        <tbody>
            @foreach ($grapes as $grape)
            <tr>
            <td> {{ $grape->name }} </td>
            </tr>
            @endforeach
        </tbody>
        <tfoot>
        </tfoot>
    </table>
{{ $grapes->links() }}
@endsection
