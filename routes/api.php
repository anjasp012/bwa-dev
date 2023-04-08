<?php

use App\Http\Controllers\API\LocationController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CheckoutController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('register/check', [RegisterController::class, 'check'])->name('api-register-check');

Route::get('provincies', [LocationController::class, 'provincies'])->name('api-provincies');
Route::get('regencies/{province_id}', [LocationController::class, 'regencies'])->name('api-regencies');
Route::post('/test', function () {
    dd('sas');
});
Route::post('/checkout/callback', [CheckoutController::class, 'callback'])->name('midtrans-callback');
