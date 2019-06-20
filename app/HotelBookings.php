<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HotelBookings extends Model
{
    protected $table = 'hotel_bookings';

    //For custom Table
    public $timestamps = false;

    protected $fillable = [
        'first_name', 'last_name', 'email', 'phone', 'address_line', 'address_line_2',
        'city', 'state', 'zip', 'cc_number', 'cc_exp_month', 'cc_exp_year'
    ];

}
