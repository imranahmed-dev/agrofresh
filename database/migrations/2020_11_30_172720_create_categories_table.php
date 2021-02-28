<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('cat_name');
            $table->string('cat_slug')->unique();
            $table->integer('p_id')->default(0);
            $table->string('cat_image')->nullable();
            $table->integer('cat_type');
            $table->integer('status')->default(0);
            $table->integer('is_admin')->nullable();
            $table->integer('is_delete')->nullable();
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
        Schema::dropIfExists('categories');
    }
}
