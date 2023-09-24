@extends('layouts.app')

@section('title', 'De Coninck - Message')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            Gestion des messages
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <thead>
                    <th>Nom</th>
                    <th>Courriel</th>
                    <th width="150px">Téléphone</th>
                    <th>Message</th>
                    <th></th>
                </thead>
                <tbody>
                    @foreach ($messages as $message)
                    <tr>
                        <td> {{ $message->name }} </td>
                        <td> {{ $message->email }} </td>
                        <td> {{ $message->phone }} </td>
                        <td> {{ substr($message->message, 0 , 50) }} ...</td>
                        <td>
                            <a class="btn btn-secondary btn-sm" href="{{ route('messages.show', $message->id) }}">Lire</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
        <div class="card-footer">

        </div>
    </div>
</div>
{{ $messages->links() }}
@endsection
