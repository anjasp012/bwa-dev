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
        $productSimilar = Product::where('category_id', $product->category_id)->where('id', '!=', $product->id)->take(4)->get();
        return view('pages.detail', [
            'product' => $product,
            'productSimilar' => $productSimilar
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
