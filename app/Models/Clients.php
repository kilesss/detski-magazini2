<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Clients extends Model
{
    use HasFactory;
    public $timestamps = false;

    public function getClientLogos(){

        return Clients::select('logo', 'url', 'id')->get()->toArray();
    }

    public function getScript($id)
    {
        return DB::table('clients')->select('script')->where('id', $id)->first();
    }
}
