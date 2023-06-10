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

        
        \App\Models\User::factory()->create([
            "name" => "Alice",
            "email" => "a@gmail.com",
        ]);


        \App\Models\User::factory()->create([
            "name" => "Bob",
            "email" => "b@gmail.com",
        ]);


        \App\Models\Article::factory(10)->create();
        \App\Models\Comment::factory(20)->create();

        $list = ["General", "Technology", "Mobile" , "Computer" , "Game"];
        foreach($list as $name){
            \App\Models\Category::create([
                "name" => $name
            ]);
        }
    }
}
