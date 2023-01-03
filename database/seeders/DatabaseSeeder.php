<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        
        //here we will active seeders tables to make call for all of them
        $this->call(UsersTableSeeder::class);
        $this->call(PostsTableSeeder::class);
        // after call of them you must make this command line to make sedder migrations 
        // php artisan migrate --seed
    }
}
