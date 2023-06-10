<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\User;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
use App\Http\Controllers\CategoryApiController;

Route::apiResource("/categories", CategoryApiController::class);

Route::post("/login", function(){
    $email = request()->email;
    $password = request()->password;

    $user = User::where("email", $email)->first();
    if($user){
        if(password_verify($password, $user->password)){
            return ['token' => $user->createToken("web")->plainTextToken];
        }
        return response(['msg' => "Incorrect Password"], 401);
    }
    return response(['msg' => "User Doesn't Exit"], 401);
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
