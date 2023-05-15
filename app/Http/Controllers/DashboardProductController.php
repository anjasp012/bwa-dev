<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\ProductGallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class DashboardProductController extends Controller
{
    public function index()
    {
        $products = Product::with(['galleries', 'category'])->where('user_id', Auth::user()->id)->get();
        return view('pages.dashboard-products', [
            'products' => $products
        ]);
    }

    public function details(string $id)
    {
        $categories = Category::get();
        $product = Product::find($id);
        return view('pages.dashboard-products-details', [
            'product' => $product,
            'categories' => $categories
        ]);
    }

    public function create()
    {
        $categories = Category::get();
        return view('pages.dashboard-products-create', [
            'categories' => $categories
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'min:3'],
            'price' => ['required', 'numeric'],
            'discon_price' => ['nullable', 'numeric'],
            'description' => ['required'],
            'category_id' => ['required'],
            'thumbnail' => ['required']
        ]);


        DB::transaction(function () use ($request) {
            $product = auth()->user()->products()->create([
                'name' => $request->name,
                'category_id' => $request->category_id,
                'price' => $request->price,
                'discon_price' => $request->discon_price,
                'slug' => Str::slug($request->name . '-' . now()->timestamp),
                'description' => $request->description,
            ]);
            foreach ($request->file('thumbnail') as $imagefile) {
                $name_pic = "product-" . Str::random(10) . '.' . $imagefile->extension();
                $pic = new ProductGallery();
                $imagefile->storeAs('public/assets/product', $name_pic);
                $pic->photos = 'assets/product/' . $name_pic;
                $pic->product_id = $product->id;
                $pic->save();
            };
        });

        return redirect(route('dashboard-product'));
    }

    public function update(Request $request, Product $product)
    {
        $request->validate([
            'name' => ['required', 'min:3'],
            'price' => ['required', 'numeric'],
            'discon_price' => ['nullable', 'numeric'],
            'description' => ['required'],
            'category_id' => ['required'],
        ]);

        $product->update([
            'name' => $request->name,
            'category_id' => $request->category_id,
            'price' => $request->price,
            'discon_price' => $request->discon_price,
            'description' => $request->description,
        ]);

        return redirect(route('dashboard-product'));
    }

    public function addImage(Request $request, Product $product)
    {
        $request->validate([
            'thumbnail' => ['required']
        ]);
        foreach ($request->file('thumbnail') as $imagefile) {
            $name_pic = "product-" . Str::random(10) . '.' . $imagefile->extension();
            $pic = new ProductGallery();
            $imagefile->storeAs('public/assets/product', $name_pic);
            $pic->photos = 'assets/product/' . $name_pic;
            $pic->product_id = $product->id;
            $pic->save();
        };

        return back();
    }

    public function deletephoto(string $id)
    {
        $photo = ProductGallery::find($id);
        File::delete('storage/' . $photo->photos);
        $photo->delete();
        return back();
    }
}
