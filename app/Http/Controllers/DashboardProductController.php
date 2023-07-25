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
            'meta_keyword' => ['required'],
            'meta_description' => ['required'],
            'name' => ['required', 'min:3'],
            'price' => ['required', 'numeric'],
            'discon_price' => ['nullable', 'numeric'],
            'description' => ['required'],
            'category_id' => ['required'],
            'thumbnail' => ['required'],
            'kondisi' => ['required'],
        ]);


        DB::transaction(function () use ($request) {
            $product = auth()->user()->products()->create([
                'meta_keyword' => $request->meta_keyword,
                'meta_description' => $request->meta_description,
                'name' => $request->name,
                'category_id' => $request->category_id,
                'price' => $request->price,
                'discon_price' => $request->discon_price,
                'slug' => Str::slug($request->name . '-' . now()->timestamp),
                'description' => $request->description,
                'link_youtube' => $request->link_youtube,
                'kondisi' => $request->kondisi,
                'size_s' => $request->size_s ? true : false,
                'size_m' => $request->size_m ? true : false,
                'size_l' => $request->size_l ? true : false,
                'size_xl' => $request->size_xl ? true : false,
                'size_xxl' => $request->size_xxl ? true : false,
            ]);
            $product->spesifications()->createMany($request->spesifications);
            $product->variations()->createMany($request->variations);
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
            'meta_keyword' => ['required'],
            'meta_description' => ['required'],
            'name' => ['required', 'min:3'],
            'price' => ['required', 'numeric'],
            'discon_price' => ['nullable', 'numeric'],
            'description' => ['required'],
            'category_id' => ['required'],
            'link_youtube' => ['required'],
        ]);

        $product->update([
            'meta_keyword' => $request->meta_keyword,
            'meta_description' => $request->meta_description,
            'name' => $request->name,
            'category_id' => $request->category_id,
            'price' => $request->price,
            'discon_price' => $request->discon_price,
            'description' => $request->description,
            'link_youtube' => $request->link_youtube,
            'size_s' => $request->size_s ? true : false,
            'size_m' => $request->size_m ? true : false,
            'size_l' => $request->size_l ? true : false,
            'size_xl' => $request->size_xl ? true : false,
            'size_xxl' => $request->size_xxl ? true : false,
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
