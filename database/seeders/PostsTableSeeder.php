<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        for($i = 1; $i <= 15; $i++ ){

        Post::create([
            'user_id' => User::inRandomOrder()->first()->id, //first one show with you give me his $id
            'title' => $faker->sentence(4),     //sentence use 4 words
            'body' => $faker->paragraph(),          //give me any paragraph
        ]);
             

        }
    }
}
