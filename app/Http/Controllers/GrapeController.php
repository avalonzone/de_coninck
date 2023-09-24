<?php

namespace App\Http\Controllers;

use App\Models\Grape;
use Illuminate\Http\Request;

class GrapeController extends Controller
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
        return Grape::create([
            'name' => $data['name'],
            'description' => $data['description'],
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
    public function show(Grape $grape)
    {
        //Not implemented
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Grape $grape)
    {
        //Not implemented
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Grape $grape)
    {
        //Not implemented
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Grape $grape)
    {
        //Not implemented
    }
}
