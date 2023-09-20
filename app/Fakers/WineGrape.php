<?php

namespace App\Fakers;

use Faker\Provider\Base;

class WineGrape extends Base
{
    //Limit gen to max 48 !!!
    protected static $grapes = ["Cabernet Sauvignon", "Merlot", "Pinot Noir", "Syrah", "Chardonnay", "Sauvignon Blanc", "Riesling", "Zinfandel", "Grenache", "Malbec", "Tempranillo", "Sémillon", "Viognier", "Mourvèdre", "Petit Verdot", "Cabernet Franc", "Sangiovese", "Nebbiolo", "Barbera", "Pinot Grigio", "Chenin Blanc", "Carménère", "Grüner Veltliner", "Petite Sirah", "Cinsault", "Gamay", "Verdejo", "Albariño", "Tempranillo Blanco", "Marsanne", "Roussanne", "Gewürztraminer", "Muscat", "Savagnin", "Mencía", "Touriga Nacional", "Aligoté", "Corvina", "Vermentino", "Chasselas", "Glera", "Nero d'Avola", "Aglianico", "Garnacha Blanca", "Fiano", "Greco di Tufo", "Palomino", "Pedro Ximénez"];

    public function wineGrape(): string
    {
        return static::randomElement(static::$grapes);
    }
}
