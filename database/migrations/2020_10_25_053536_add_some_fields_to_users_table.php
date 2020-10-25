<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSomeFieldsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('phone')->unique();
            $table->text('present_address')->nullable();
            $table->text('permanent_address')->nullable();
            $table->integer('age')->nullable();
            $table->string('religion')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('phone');
            $table->dropColumn('present_address');
            $table->dropColumn('permanent_address');
            $table->dropColumn('age');
            $table->dropColumn('religion');
        });
    }
}
