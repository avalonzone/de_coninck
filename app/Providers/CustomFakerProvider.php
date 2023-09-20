<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Faker\Generator;
use Faker\Factory;
use App\Fakers\WineName;
use App\Fakers\WineGrape;
use App\Fakers\WineColor;

class CustomFakerProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //Register to Faker
        $this->app->singleton(Generator::class, function () {
            $faker = Factory::create();
            $faker->addProvider(new WineName($faker));
            $faker->addProvider(new WineGrape($faker));
            $faker->addProvider(new WineColor($faker));
            return $faker;
        });

        //Allow Faker() Global to be called
        $this->app->bind(Generator::class . ':' . config('app.faker_locale'), Generator::class);
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
    }
}
