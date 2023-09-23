@extends('layouts.app')

@section('title', 'De Coninck - Grape')

@section('content')
<div class="container">
    <table class="table table-bordered">
        <th>Nom</th>
    @foreach ($grapes as $grape)
    <tr>
       <td> {{ $grape->name }} </td>
    <tr>
    @endforeach
    <table>
</div>

{{ $grapes->links() }}
@endsection
