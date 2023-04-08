<?php

use App\Http\Controllers\Admin\DashboardController as AdminDashboardController;
use App\Http\Controllers\Admin\UserController as AdminUserController;
use App\Http\Controllers\Admin\CategoryController as AdminCategoryController;
use App\Http\Controllers\Admin\ProductController as AdminProductController;
use App\Http\Controllers\Admin\ProductGalleryController as AdminProductGalleryController;
use App\Http\Controllers\Admin\TransactionController as AdminTransactionController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DashboardProductController;
use App\Http\Controllers\DashboardSettingController;
use App\Http\Controllers\DashboardTransactionController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

use function Clue\StreamFilter\fun;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/categories', [CategoryController::class, 'index'])->name('categories');
Route::get('/categories/{id}', [CategoryController::class, 'details'])->name('categories-details');
Route::get('/details/{id}', [DetailController::class, 'index'])->name('detail');
Route::post('/details/{id}', [DetailController::class, 'add'])->name('detail-add');



Route::group(['middleware' => ['auth']], function () {
    Route::get('/cart', [CartController::class, 'index'])->name('cart');
    Route::delete('/cart/{id}', [CartController::class, 'delete'])->name('cart-delete');
    Route::post('/checkout', [CheckoutController::class, 'process'])->name('checkout');
    Route::get('/success', [CartController::class, 'success'])->name('success');

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/dashboard/products', [DashboardProductController::class, 'index'])->middleware('storeOpen')->name('dashboard-product');
    Route::get('/dashboard/product/create', [DashboardProductController::class, 'create'])->middleware('storeOpen')->name('dashboard-product-create');
    Route::get('/dashboard/product/{id}', [DashboardProductController::class, 'details'])->middleware('storeOpen')->name('dashboard-product-details');

    Route::get('/dashboard/transactions', [DashboardTransactionController::class, 'index'])->name('dashboard-transaction');
    Route::get('/dashboard/transaction/{id}', [DashboardTransactionController::class, 'details'])->name('dashboard-transaction-details');
    Route::post('/dashboard/transaction/{id}', [DashboardTransactionController::class, 'update'])->name('dashboard-transaction-update');

    Route::get('/dashboard/settings', [DashboardSettingController::class, 'store'])->name('dashboard-settings-store');
    Route::get('/dashboard/account', [DashboardSettingController::class, 'account'])->name('dashboard-settings-account');
});

Route::get('/register/success', [RegisterController::class, 'success'])->name('register-success');


Route::prefix('admin')->middleware('auth', 'admin')->group(function () {
    Route::get('/users', function () {
        // Matches The "/admin/users" URL
    });
    Route::get('/', [AdminDashboardController::class, 'index'])->name('admin-dashboard');
    Route::resources(
        [
            'category' => AdminCategoryController::class,
            'user' => AdminUserController::class,
            'product' => AdminProductController::class,
            'product-gallery' => AdminProductGalleryController::class,
            'transaction' => AdminTransactionController::class,
        ]
    );
});

Auth::routes();;
