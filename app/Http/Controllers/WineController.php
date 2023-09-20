<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorewineRequest;
use App\Http\Requests\UpdatewineRequest;
use App\Models\Wine;

class WineController extends Controller
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
     /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\Wine
     */
    protected function create(array $data)
    {
        return Wine::create([
            'name' => $data['name'],
            'description' => $data['description'],
            'comment' => $data['comment'],
            'source' => $data['source'],
            'year' => $data['year'],
            'grape_id' => $data['grape_id'],
            'type_id' => $data['type_id'],
            'price' => $data['price'],
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreWineRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Wine $wine)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Wine $wine)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateWineRequest $request, Wine $wine)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Wine $wine)
    {
        //
    }
}
