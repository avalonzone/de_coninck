<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Wine;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Wine>
 */
class WineFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->wineName(),
            'description' => fake()->text(96),
            'comment' => fake()->text(32),
            'source' => fake()->url(),
            'year' => fake()->year(),
            'grape_id' => random_int(1,48),
            'type_id' => random_int(1,20),
            'price' => fake()->randomFloat(2,10,50),
        ];
    }
}
