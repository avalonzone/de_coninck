<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Type;

class TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //Not implemented
    }

    /**
     * Show the form for creating a new resource.
     */
    protected function create(array $data)
    {
        return Type::create([
            'name' => $data['name'],
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //Not implemented
    }

    /**
     * Display the specified resource.
     */
    public function show(Type $type)
    {
        //Not implemented
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Type $type)
    {
        //Not implemented
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Type $type)
    {
        //Not implemented
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Type $type)
    {
        //Not implemented
    }
}
