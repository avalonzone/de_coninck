<?php

namespace App\Fakers;

use Faker\Provider\Base;

class WineColor extends Base
{
    //Limit gen to max 20 !!!
    protected static $colors = ["Rouge", "Blanc", "Rosé", "Jaune", "Or", "Rubis", "Pourpre", "Doré", "Ambré", "Cuivré", "Topaze", "Écarlate", "Saumon", "Acajou", "Brun", "Noir", "Vert", "Argenté", "Bronze", "Platine"];

    public function wineColor(): string
    {
        return static::randomElement(static::$colors);
    }
}
