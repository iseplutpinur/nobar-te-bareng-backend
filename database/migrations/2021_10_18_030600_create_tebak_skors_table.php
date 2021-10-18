<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTebakSkorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tebak_skors', function (Blueprint $table) {
            $table->id();
            $table->integer('pertandingan_id');
            $table->integer('member_id');
            $table->integer('score_club_1');
            $table->integer('score_club_2');
            $table->integer('menang')->nullable();
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
        Schema::dropIfExists('tebak_skors');
    }
}
