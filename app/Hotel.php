<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $table = 'hotels';

    public function upload(){
        return $this->hasMany('App\Uploads', 'foreign_key');
    }

    public function rooms(){
        return $this->hasMany('App\HotelRooms', 'hotel_id');
    }

    public function geo_location(){
        return $this->hasMany('App\HotelLocation', 'hotel_id');
    }
}
