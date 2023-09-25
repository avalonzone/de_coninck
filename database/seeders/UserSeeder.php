<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $pwd = env('APP_PWD', false);
        $usr = env('APP_USR', false);

        // Admin user
        User::factory()->create([
            'name' => 'Administrator',
            'email' => $usr,
            'email_verified_at' => now(),
            'password' => Hash::make($pwd),
            'remember_token' => Str::random(10),
        ]);

        User::factory()
            ->count(50)
            ->create();
    }
}
