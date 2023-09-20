<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreGrapeRequest;
use App\Http\Requests\UpdateGrapeRequest;
use App\Models\Grape;

class GrapeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
    public function store(StoreGrapeRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Grape $grape)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Grape $grape)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateGrapeRequest $request, Grape $grape)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Grape $grape)
    {
        //
    }
}
