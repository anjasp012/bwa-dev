<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Product;
use App\Models\Promo;
use App\Models\Slider;
use App\Models\Testimony;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $sliders = Slider::get();
        $testimonies = Testimony::latest()->get();
        $articles = Article::latest()->take(4)->get();
        $categories = Category::take(6)->get();
        $promos = Promo::take(6)->get();
        $products = Product::with('galleries')->take(8)->get();
        return view('pages.home', [
            'categories' => $categories,
            'promos' => $promos,
            'products' => $products,
            'testimonies' => $testimonies,
            'articles' => $articles,
            'sliders' => $sliders,
        ]);
    }
}
