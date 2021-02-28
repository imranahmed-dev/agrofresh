<?php

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


Route::get('clear', function() {
    $exitCode = Artisan::call('config:clear');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:cache');
    $exitCode = Artisan::call('storage:link');
    return 'DONE'; //Return anything
});



Route::get('/','frontend\FrontendController@index');

Route::get('/customer/login','frontend\FrontendController@customerLogin')->name('customer.login');

Route::get('/products','frontend\FrontendController@products')->name('products');

Route::get('/blogs','frontend\FrontendController@blogs')->name('blogs');

Route::get('/products/category/{slug}','frontend\FrontendController@catproducts')->name('catproducts');

Route::get('/blogs','frontend\FrontendController@blogs')->name('blogs');

Route::get('/contact','frontend\FrontendController@contactus')->name('contactus');

Route::get('/customer/login','frontend\FrontendController@customerLogin')->name('customer.login');

Route::get('/product/details/{slug}','frontend\FrontendController@productDetails')->name('product.details');

Route::get('/customer/registration','frontend\FrontendController@customerRegistration')->name('customer.registration');

Route::post('/customer/registration/store','frontend\FrontendController@RegistrationStore')->name('registration.store');

Route::post('/contact/store','frontend\ContactController@store')->name('contact.store');


/*order*/
Route::post('/order/store','frontend\OrderController@store')->name('order.store');


/*Shopping cart*/
Route::get('product/add_to_cart/{id}','frontend\CartController@store');
Route::get('product/singlecart/{id}','frontend\CartController@singlecart');
Route::get('/cart/get', 'frontend\CartController@get');
Route::get('/cart','frontend\CartController@index')->name('view.cart');
Route::get('/cartable/product', 'frontend\CartController@cartableProduct');
Route::get('/cart/update','frontend\CartController@cartupdate');
Route::get('cart/item/delete/{id}','frontend\CartController@destroy');
Route::get('cart/total','frontend\CartController@carttotal');
Route::get('cart/amount','frontend\CartController@cartamount');







Auth::routes();

Route::group(['as'=>'author.','prefix'=>'customer','namespace'=>'frontend','middleware'=>['auth','author']], function(){

    Route::get('dashboard','DashboardController@dashboard')->name('dashboard');
    Route::get('order/list','DashboardController@orderlist')->name('orderlist');
    Route::get('/dashboard/profile', 'DashboardController@profile')->name('profile');
    
});


Route::group(['prefix'=>'admin','middleware'=>['auth','admin']], function(){
    
Route::get('dashboard','HomeController@admin')->name('admin.dashboard');

Route::get('getSubcategory','backend\ProductController@subcategory');

Route::group([ 'prefix' => '/setting','namespace' => 'backend'], function() {
		Route::get('view','SiteSettingController@index')->name('setting.index');
		Route::get('edit','SiteSettingController@edit')->name('setting.edit');
		Route::post('update','SiteSettingController@update')->name('setting.update');
 
});

Route::group([ 'prefix' => '/category','namespace' => 'backend'], function() {

		Route::get('view','CategoryController@index')->name('category.index');
		Route::get('create','CategoryController@create')->name('category.create');
		Route::post('store','CategoryController@store')->name('category.store');
		Route::get('edit/{id}','CategoryController@edit')->name('category.edit');
		Route::post('update/{id}','CategoryController@update')->name('category.update');
		Route::get('destroy/{id}','CategoryController@destroy')->name('category.destroy');

});

Route::group([ 'prefix' => '/sub/category','namespace' => 'backend'], function() {


		Route::get('view','SubCategoryController@index')->name('subcategory.index');
		Route::get('create','SubCategoryController@create')->name('subcategory.create');
		Route::post('store','SubCategoryController@store')->name('subcategory.store');
		Route::get('edit/{id}','SubCategoryController@edit')->name('subcategory.edit');
		Route::post('update/{id}','SubCategoryController@update')->name('subcategory.update');
		Route::get('destroy/{id}','SubCategoryController@destroy')->name('subcategory.destroy');

});



Route::group([ 'prefix' => '/sub/product','namespace' => 'backend'], function() {

		Route::get('view','ProductController@index')->name('product.index');
		Route::get('create','ProductController@create')->name('product.create');
		Route::post('store','ProductController@store')->name('product.store');
		Route::get('edit/{id}','ProductController@edit')->name('product.edit');
		Route::get('show/{id}','ProductController@show')->name('product.show');
		Route::post('update/{id}','ProductController@update')->name('product.update');
		Route::get('destroy/{id}','ProductController@destroy')->name('product.destroy');

});


Route::group([ 'prefix' => '/social','namespace' => 'backend'], function() {

		Route::get('view','SocialMediaController@index')->name('social.index');
		Route::get('create','SocialMediaController@create')->name('social.create');
		Route::post('store','SocialMediaController@store')->name('social.store');
		Route::get('edit/{id}','SocialMediaController@edit')->name('social.edit');
		Route::get('show/{id}','SocialMediaController@show')->name('social.show');
		Route::post('update/{id}','SocialMediaController@update')->name('social.update');
		Route::get('destroy/{id}','SocialMediaController@destroy')->name('social.destroy');

});


Route::group([ 'prefix' => '/blog','namespace' => 'backend'], function() {

		Route::get('view','BlogController@index')->name('blog.index');
		Route::get('create','BlogController@create')->name('blog.create');
		Route::post('store','BlogController@store')->name('blog.store');
		Route::get('edit/{id}','BlogController@edit')->name('blog.edit');
		Route::get('show/{id}','BlogController@show')->name('blog.show');
		Route::post('update/{id}','BlogController@update')->name('blog.update');
		Route::get('destroy/{id}','BlogController@destroy')->name('blog.destroy');

});
    
Route::group([ 'prefix' => '/slider','namespace' => 'backend'], function() {

		Route::get('view','SliderController@index')->name('slider.index');
		Route::get('create','SliderController@create')->name('slider.create');
		Route::post('store','SliderController@store')->name('slider.store');
		Route::get('edit/{id}','SliderController@edit')->name('slider.edit');
		Route::post('update/{id}','SliderController@update')->name('slider.update');
		Route::get('destroy/{id}','SliderController@destroy')->name('slider.destroy');
    
});
    
Route::group([ 'prefix' => '/order','namespace' => 'backend'], function() {
    
        Route::get('pending/view','OrderController@pendingindex')->name('order.pending.index');
        Route::get('approved/view','OrderController@approvedindex')->name('order.approved.index');
        Route::get('approve/{id}','OrderController@approve')->name('order.approve');
    

});
    
});
