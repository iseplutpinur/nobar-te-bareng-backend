<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePertandingansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pertandingans', function (Blueprint $table) {
            $table->id();
            $table->integer('club_id_1');
            $table->integer('club_id_2');
            $table->integer('stadion_id');
            $table->date('tanggal');
            $table->time('jam');
            $table->integer('score_club_1');
            $table->integer('score_club_2');
            $table->integer('pemain_id_mot');
            $table->integer('status')->default(1)->comment('0 Nonaktif | 1 Aktif');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pertandingans');
    }
}
