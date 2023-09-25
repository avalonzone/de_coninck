<?php

namespace App\Http\Controllers;

use App\Models\Grape;
use App\Models\Wine;
use App\Models\Type;

use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class WineController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except([]);
    }

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
     * Show the form for creating a new wine.
     */
    protected function create() : view
    {
        return view('wines.create');
    }

    /**
     * Store a newly created wine in storage.
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
     * Display the specified wine.
     */
    public function show(Wine $wine) : View
    {
        $grapes = Grape::all();
        $types = Type::all();
        return view('wines.show', compact('wine', 'grapes', 'types'));
    }

    /**
     * Show the form for editing the specified wine.
     */
    public function edit(Wine $wine) : View
    {
        $grapes = Grape::all();
        $types = Type::all();
        return view('wines.edit', compact('wine', 'grapes', 'types'));
    }

    /**
     * Update the specified wine in storage.
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

        $allRequestDatas = $request->all();

        if ($image = $request->file('source'))
        {
            $destinationPath = storage_path('app/public/images/');
            $wineImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $wineImage);
            $allRequestDatas['source'] = "$wineImage";
        }
        else
        {
            unset($allRequestDatas['source']);
        }

        $wine->update($allRequestDatas);

        return redirect()->route('wines.index')
                ->with('success', "Vin mis à jour avec succès!");
    }

    /**
     * Remove the specified wine from storage.
     */
    public function destroy(Wine $wine) : RedirectResponse
    {
        $wine->delete();

        return redirect()->route('wines.index')
                ->with('success', 'Vin supprimé avec succès!');
    }
}
