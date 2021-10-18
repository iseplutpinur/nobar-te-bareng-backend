<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/tes', function () {
    $petrandingan = DB::table('pertandingan as a')
        ->select(
            'a.id',
            'a.tanggal_main as date',
            'd.nama as stadion',
            'a.jam_main as kick',
            'b.nama as tim_1',
            'b.logo as tim_1_foto',
            'c.nama as tim_2',
            'c.logo as tim_2_foto',
            'a.status',
            DB::raw("'' as kota"),
            DB::raw("'' as stream"),
        )
        ->join('team as b', 'b.id', '=', 'a.id_team_1')
        ->join('team as c', 'c.id', '=', 'a.id_team_2')
        ->join('stadion as d', 'd.id', '=', 'a.id_stadion')
        ->whereBetween('a.status', ['1', '3'])
        ->get();
    dd($petrandingan);
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
