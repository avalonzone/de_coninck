@extends('layouts.app')

@section('title', 'De Coninck - Consulter la liste des messages')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <strong>Gestion des messages</strong>
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
                        <td class="align-middle"> {{ $message->name }} </td>
                        <td class="align-middle"> {{ $message->email }} </td>
                        <td class="align-middle"> {{ $message->phone }} </td>
                        <td class="align-middle"> {{ substr($message->message, 0 , 50) }} ...</td>
                        <td class="align-middle text-center">
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
            {{ $messages->links() }}
        </div>

    </div>
</div>
@endsection
