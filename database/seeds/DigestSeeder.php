<?php

use Illuminate\Database\Seeder;

class DigestSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dump = file_get_contents(database_path() ."/digest_trade_dump.sql");
        ini_set('memory_limit', '-1');
        \DB::unprepared($dump);
    }
}
