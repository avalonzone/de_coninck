<?php

namespace App\Http\Controllers;

use App\Models\Grape;
use App\Models\Wine;
use App\Models\Type;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;
use Illuminate\Http\Request;
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
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) : RedirectResponse
    {
        $request->validate([
            'name' => 'required',
            'detail' => 'required',
        ]);

        Wine::create($request->all());

        return redirect()->route('wines.index')
            ->with('success', 'Nouveau vin ajouté avec succès!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Wine $wine) : View
    {
        $grapes = Grape::all();
        $types = Type::all();
        return view('wines.show', compact('wine', 'grapes', 'types'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Wine $wine) : View
    {
        $grapes = Grape::all();
        $types = Type::all();
        return view('wines.edit', compact('wine', 'grapes', 'types'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Wine $wine) : RedirectResponse
    {
        $request->validate([
            'name' => 'required',
            'year' => 'required',
            'price' => 'required',
            'grape_id' => 'required',
            'type_id' => 'required',
            'price' => 'required',
            'description' => 'required',
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
