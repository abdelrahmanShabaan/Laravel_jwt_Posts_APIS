<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    
    // Here i will make method for login with parameter Request will use in cycle of built in laravel with Api
    public function login(Request $request){
        //first thing must be is :: vaildator
        $vaildator  = Validator::make($request->all(),
        [
            // simple advice don't forget to use data in formal array
            // don't forget laravel password auth. use 8 pass character or numbers etc..
            'email' => 'required|email',
            'password' => 'required|min:8',
        ]
    );

    //here if we have error message we will make if happen any error make a error message and status code 401 
    // but i will make 200 to prevent to make any error in console of websites
    if ($vaildator->failed()){
            return response()->json(['error' => true, 'message' => $vaildator->errors()], 200);
    }

        // here i will make something named credentails to show request data
        $credintial = request(['email', 'password']);

        // here we will make token that be for every user make login and this is be builtin laravel framework
        // attempt here that use in system of laravel for token of users
        $token = auth('api')->attempt($credintial);
        // ok iw user unautherized => that mean he don't have any lawylety to enter to this website 
        if(!$token){
            // here we will make return for value say something 
            // and here i will make status code be 200 unsted of 401 to prevent console log errors 
            return response()->json(['error' => true, 'messagge' => 'Unauthorized'], 200);
        }

        // here we get out of if (faild login) and we will return the success message 
        // in way of response json()
        return response()->json([
            'access_token' => $token,
            'expire_in' => auth('api')->factory()->getTTL() * 3600,
        ]);



    }

    public function logout(){
        /* here it's a simple way 
         *Are you remember in native php we use session destory && here we will something like this  
         * but it will be connect with api because in api we play with state list
         */

        return response()->json(['error' => false, 'message' => 'logout Successfully'], 200);


    }
}
