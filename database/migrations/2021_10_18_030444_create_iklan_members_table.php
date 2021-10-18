<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIklanMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('iklan_members', function (Blueprint $table) {
            $table->id();
            $table->integer('pertandingan_id')->nullable();
            $table->integer('iklan_id')->nullable();
            $table->integer('member_id')->nullable();
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
        Schema::dropIfExists('iklan_members');
    }
}
