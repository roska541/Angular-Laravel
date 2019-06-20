<?php

namespace App\Http\Controllers;

use App\HotelBookings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class HotelBookingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $response = $request->get('form');
        Log::info($response);
        try{
            $booked = new HotelBookings;
            $booked->fill($response);
            $booked->save();

            $message = "Data Saved";
        }catch(Exception $e){
            $message = $e;
        }
        

        Log::info('Saved data');

        header('Content-Type: application/json');
        return response()->json($message);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\HotelBookings  $hotelBookings
     * @return \Illuminate\Http\Response
     */
    public function show(HotelBookings $hotelBookings)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\HotelBookings  $hotelBookings
     * @return \Illuminate\Http\Response
     */
    public function edit(HotelBookings $hotelBookings)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\HotelBookings  $hotelBookings
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HotelBookings $hotelBookings)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\HotelBookings  $hotelBookings
     * @return \Illuminate\Http\Response
     */
    public function destroy(HotelBookings $hotelBookings)
    {
        //
    }
}
