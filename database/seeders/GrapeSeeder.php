<?php

namespace Database\Seeders;

use Database\Factories\GrapeFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Grape;

class GrapeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Grape::factory()
            ->count(48)
            ->create();
    }
}
