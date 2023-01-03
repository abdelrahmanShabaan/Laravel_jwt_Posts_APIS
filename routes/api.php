<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


// Here i will use controller have method named login to catch data by login 
Route::post('login', [AuthController::class, 'login']);

/*
* here i will use jwt libarary that add in the kernal 
*  and we will make middleware jwt.auth you will define it display route of link of libaray in the project
*/

Route::group(['middleware' => ['jwt.auth']], function () {

    // route to get posts of project || by method GET
    Route::get('my_posts' , [UserController::class , 'index']);

    // route to logout from AuthController method name :: logout || by mehod POST
    Route::post('logout', [AuthController::class, 'logout']);

});