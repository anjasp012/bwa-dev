<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ProductRequest;
use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (request()->ajax()) {
            $query = Product::with('user', 'category');
            return DataTables::of($query)
                ->addColumn('action', function ($item) {
                    return '
                        <div class="btn-group">
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle mr-1 mb-1" type="button" data-bs-toggle="dropdown">
                                    Aksi
                                </button>
                                <div class="dropdown-menu">
                                    <a href="' . route('product.edit', $item->id) .  '" class="dropdown-item">Sunting</a>
                                    <form action="' . route("product.destroy", $item->id) .  '" method="POST">
                                        ' . method_field('DELETE') . csrf_field() . '
                                        <button type="submit" class="dropdown-item text-danger">Hapus</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    ';
                })
                ->rawColumns(['action'])
                ->make();
        }

        return view('pages.admin.product.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $users = User::where('store_status', true)->get();
        $categories = Category::all();
        return view('pages.admin.product.create', [
            'categories' => $categories,
            'users' => $users,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ProductRequest $request)
    {
        $data = $request->all();

        $data['slug'] = Str::slug($request->name . '-' . now()->timestamp);
        $data['size_s'] = $request->size_s ? true : false;
        $data['size_m'] = $request->size_m ? true : false;
        $data['size_l'] = $request->size_l ? true : false;
        $data['size_xl'] = $request->size_xl ? true : false;
        $data['size_xxl'] = $request->size_xxl ? true : false;

        Product::create($data);

        return redirect()->route('product.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $item = Product::findOrFail($id);
        $users = User::where('store_status', true)->get();
        $categories = Category::all();
        return view('pages.admin.product.edit', [
            'item' => $item,
            'categories' => $categories,
            'users' => $users,
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ProductRequest $request, string $id)
    {
        $item = Product::findOrFail($id);
        $data = $request->all();

        $data['slug'] = Str::slug($request->name . '-' . now()->timestamp);
        $data['size_s'] = $request->size_s ? true : false;
        $data['size_m'] = $request->size_m ? true : false;
        $data['size_l'] = $request->size_l ? true : false;
        $data['size_xl'] = $request->size_xl ? true : false;
        $data['size_xxl'] = $request->size_xxl ? true : false;

        $item->update($data);

        return redirect()->route('product.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $item = Product::findOrFail($id);
        $galeries = $item->galleries()->get()->pluck('photos');
        foreach ($galeries as $galery) {
            File::delete('storage/' . $galery);
        }
        $item->galleries()->delete();
        $item->delete();

        return redirect()->back();
    }
}
