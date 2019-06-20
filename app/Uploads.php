<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Uploads extends Model
{
	protected $table = 'uploads';

    public function hotel(){
    	return $this->belongsTo('App\Hotel', 'foreign_key');
    }
}
