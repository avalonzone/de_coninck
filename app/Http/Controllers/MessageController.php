<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoremessageRequest;
use App\Http\Requests\UpdatemessageRequest;
use App\Models\Message;

class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except([]);
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $messages = Message::paginate(15);
        return view('messages.index', compact('messages'))
                ->with('i', (request()->input('page', 1) - 1) * 15);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoremessageRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(message $message)
    {
        return view('messages.show', compact('message'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(message $message)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatemessageRequest $request, message $message)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(message $message)
    {
        //
    }
}
