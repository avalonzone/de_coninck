@extends('layouts.app')

@section('title', 'De Coninck - Message')

@section('content')
<div class="container">
    <table class="table table-bordered">
        <th>Nom</th>
        <th>Courriel</th>
        <th>Téléphone</th>
        <th>Message</th>
    @foreach ($messages as $message)
    <tr>
       <td> {{ $message->name }} </td>
       <td> {{ $message->email }} </td>
       <td> {{ $message->phone }} </td>
       <td> {{ $message->message }}</td>
    <tr>
    @endforeach
    <table>
</div>
{{ $messages->links() }}
@endsection
