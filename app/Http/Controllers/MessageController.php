<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Message;

class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except([]);
    }
    /**
     * Display a listing of the message.
     */
    public function index()
    {
        $messages = Message::paginate(15);
        return view('messages.index', compact('messages'))
                ->with('i', (request()->input('page', 1) - 1) * 15);
    }

    /**
     * Show the form for creating a new message.
     */
    public function create()
    {
        //Not implemented
    }

    /**
     * Store a newly created message in storage.
     */
    public function store(Request $request)
    {
        //Not implemented
    }

    /**
     * Display the specified message.
     */
    public function show(message $message)
    {
        return view('messages.show', compact('message'));
    }

    /**
     * Show the form for editing the specified message.
     */
    public function edit(message $message)
    {
        //Not implemented
    }

    /**
     * Update the specified message in storage.
     */
    public function update(Request $request, message $message)
    {
        //Not implemented
    }

    /**
     * Remove the specified message from storage.
     */
    public function destroy(message $message)
    {
        //Not implemented
    }
}
