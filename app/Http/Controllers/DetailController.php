<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use Auth;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function index($slug)
    {
        $product = Product::with('galleries', 'user')->whereSlug($slug)->firstOrFail();
        return view('pages.detail', [
            'product' => $product
        ]);
    }

    public function add($id)
    {
        $data = [
            'product_id' => $id,
            'user_id' => Auth::user()->id
        ];
        Cart::create($data);
        return redirect()->route('cart');
    }
}
