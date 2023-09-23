@extends('layouts.app')

@section('title', 'De Coninck - Message')

@section('content')
<div class="container">
    <table class="table table-bordered">
        <thead>
            <th>Nom</th>
            <th>Courriel</th>
            <th width="150px">Téléphone</th>
            <th>Message</th>
        </thead>
        <tbody>
            @foreach ($messages as $message)
            <tr>
                <td> {{ $message->name }} </td>
                <td> {{ $message->email }} </td>
                <td> {{ $message->phone }} </td>
                <td> {{ $message->message }}</td>
            </tr>
            @endforeach
        </tbody>
        <tfoot>
        </tfoot>
    <table>
</div>
{{ $messages->links() }}
@endsection
