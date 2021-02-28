<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('productuid');
            $table->string('product_title');
            $table->string('product_slug');
            $table->integer('category_id');
            $table->string('buy_price');
            $table->string('sell_price');
            $table->integer('discount_type')->nullable();
            $table->string('discount')->nullable();
            $table->string('discount_price')->nullable();
            $table->string('price_active')->nullable();
            $table->text('short_discription');
            $table->text('long_discription');
            $table->string('default_image');
            $table->integer('type')->default(1);
            $table->integer('status')->default(1);
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
        Schema::dropIfExists('products');
    }
}
