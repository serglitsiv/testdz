<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'code' =>  rand(1, 1000) ,
            'price' => rand(100, 50000),
            'description' => $this->faker->realText(rand(50, 150)),
            'height' => rand(10, 100) ,
            'width'  =>   rand(5, 150) ,

        ];
    }


}
