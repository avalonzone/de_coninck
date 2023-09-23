<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    //Manual seed + db build : php artisan migrate:fresh --seed

    // prevent models from dispatching events (Disable if needed)
    use WithoutModelEvents;
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            UserSeeder::class,
            TypeSeeder::class,
            GrapeSeeder::class,
            WineSeeder::class,
            MessageSeeder::class,
        ]);
    }
}
