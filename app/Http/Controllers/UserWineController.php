<?php

namespace App\Http\Controllers;

use App\Models\Wine;
use App\Models\Grape;
use App\Models\Type;
use Illuminate\Http\Request;

class UserWineController extends Controller
{
    /**
     * Get Wine as JSON
     */
    public function list()
    {
        $wines = Wine::all();
        $grapes = Grape::all()->toArray();
        $types = Type::all()->toArray();

        $completeList = [];

        foreach($wines as $wine)
        {
            $grapeIndex = array_search($wine->grape_id, array_column($grapes, 'id'));
            if ($grapeIndex !== false) {
                $wine->grape = $grapes[$grapeIndex]["name"];
            }
            else
            {
                $wine->grape = "";
            }

            $typeIndex = array_search($wine->type_id, array_column($types, 'id'));
            if ($typeIndex !== false) {
                $wine->type = $types[$typeIndex]["name"];
            }
            else
            {
                $wine->type = "";
            }

            $completeList[] = $wine;

        }

        return response()->json($wines);
    }
}
