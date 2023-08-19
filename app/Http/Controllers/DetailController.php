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
        $product = Product::with('galleries', 'user', 'variations')->whereSlug($slug)->firstOrFail();
        // dd($product->variationHigherPrice->price);
        $productSimilar = Product::where('category_id', $product->category_id)->where('id', '!=', $product->id)->take(4)->get();
        return view('pages.detail', [
            'product' => $product,
            'productSimilar' => $productSimilar
        ]);
    }

    public function add(Request $request, $id)
    {
        $request->validate([
            'size' => ['required'],
            'variation' => ['required']
        ]);
        $data = [
            'product_id' => $id,
            'size' => $request->size,
            'variation_id' => $request->variation,
        ];
        Auth::user()->cart()->create($data);
        return redirect()->route('cart');
    }
}
