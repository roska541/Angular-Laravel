<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HotelRooms extends Model
{
    protected $table = 'hotel_rooms';

    public function hotel(){
    	return $this->belongsTo('App\Hotel', 'hotel_id');
    }
}
