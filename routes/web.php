<?php

// Route index
Route::get('/',[
    'uses' => 'ProductController@getIndex',
    'as' => 'product.index'
]);
// Route cocktail
Route::get('/cocktails',[
    'uses' => 'ProductController@getCocktails',
    'as' => 'shop.cocktail'
]);
// Route alcool
Route::get('/alcools',[
    'uses' => 'ProductController@getAlcools',
    'as' => 'shop.alcool'
]);
// Route soft
Route::get('/softs',[
    'uses' => 'ProductController@getSofts',
    'as' => 'shop.soft'
]);

// Routes groupes utilisateur
Route::group(['prefix' => 'user'], function () {
// Routes visiteur
    Route::group(['middleware' => 'guest'], function () {
        Route::get('/signup',[
            'uses' => 'UserController@getSignUp',
            'as' => 'user.signup',
        ]);
        Route::post('/signup',[
            'uses' => 'UserController@postSignUp',
            'as' => 'user.signup'
        ]);

        Route::get('/signin',[
            'uses' => 'UserController@getSignIn',
            'as' => 'user.signin'
        ]);
        Route::post('/signin',[
            'uses' => 'UserController@postSignIn',
            'as' => 'user.signin'
        ]);
    });
// Routes client
    Route::group(['middleware' => 'auth'], function (){
        Route::get('/logout',[
            'uses' => 'UserController@getLogout',
            'as' => 'user.logout'
        ]);

        Route::get('/profile', [
            'uses' => 'UserController@getUserProfile',
            'as' => 'user.profile'
        ]);
    });
});

/*
//ajoute produits à la commande

Route::get('/add-to-cart/{id}', [
    'uses' => 'ProductController@getAddToCart',
    'as' => 'product.addtocart'
]);
*/

//ajoute produits à la commande

Route::get('/add-to-cart/{id}', [
    'uses' => 'ProductController@getAddToCart',
    'as' => 'product.addtocart'
]);

//enlève un produit à la commande
Route::get('/deduct/{id}', [
    'uses' => 'ProductController@deductByOne',
    'as' => 'product.deductByOne'
]);

//supprime un produit à la commande
Route::get('/delete/{id}', [
    'uses' => 'ProductController@removeItem',
    'as' => 'product.removeItem'
]);

//accède à la commande
Route::get('/shopping-cart', [
    'uses' => 'ProductController@getCart',
    'as' => 'product.shoppingcart'
]);


// page gestion de commande

Route::group(['middleware' => 'auth'], function () {
    Route::get('/checkout', [
        'uses' => 'ProductController@getCheckout',
        'as' => 'checkout'
    ]);

    Route::post('/checkout', [
        'uses' => 'ProductController@postCheckout',
        'as' => 'checkout'
    ]);
});