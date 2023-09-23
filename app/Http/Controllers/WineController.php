<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorewineRequest;
use App\Http\Requests\UpdatewineRequest;
use App\Models\Wine;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;

class WineController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index() : View
    {
        $wines = Wine::paginate(15);
        return view('wines.index', compact('wines'))
                ->with('i', (request()->input('page', 1) - 1) * 15);
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
    protected function create() : view
    {
        return view('wines.create');
        /*
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
        */
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreWineRequest $request) : RedirectResponse
    {
        $request->validate([
            'name' => 'required',
            'detail' => 'required',
        ]);

        Wine::create($request->all());

        return redirect()->route('products.index')
            ->with('success', 'Nouveau vin ajouté avec succès!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Wine $wine) : View
    {
        return view('wines.show', compact('wine'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Wine $wine) : View
    {
        return view('wines.edit', compact('wine'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateWineRequest $request, Wine $wine) : RedirectResponse
    {
        $request->validate([
            'description' => 'required',
            'year' => 'required',
            'grape' => 'required',
            'type' => 'required',
        ]);

        $wine->update($request->all());

        return redirect()->route('wines.index')
                ->with('success', "Vin mis à jour avec succès!");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Wine $wine) : RedirectResponse
    {
        $wine->delete();

        return redirect()->route('wines.index')
                ->with('success', 'Vin supprimé avec succès!');
    }
}
