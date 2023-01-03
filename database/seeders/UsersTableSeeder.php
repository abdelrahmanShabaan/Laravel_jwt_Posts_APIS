<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'abdo',
            'email' => 'abdo@gmail.com',
            'password' => bcrypt('abdo1234')
        ]);
        
        User::create([
            'name' => 'ahmed',
            'email' => 'ahmed@gmail.com',
            'password' => bcrypt('ahmed1234')
        ]);

        User::create([
            'name' => 'mido',
            'email' => 'mido@gmail.com',
            'password' => bcrypt('mido1234')
        ]);
    }
}
