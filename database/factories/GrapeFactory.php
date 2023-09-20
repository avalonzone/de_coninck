<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Grape;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Grape>
 */
class GrapeFactory extends Factory
{
    //protected $model = Grape::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->wineGrape(),
            'description' => fake()->text(96),
        ];
    }
}
