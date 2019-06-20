<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HotelLocation extends Model
{
    protected $table = 'hotel_geo_locations';

    public function hotel(){
    	return $this->belongsTo('App\Hotel', 'hotel_id');
    }
}
