<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Promo;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class PromoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (request()->ajax()) {
            $query = Promo::query();
            return DataTables::of($query)
                ->addColumn('action', function ($item) {
                    return '
                        <div class="btn-group">
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle mr-1 mb-1" type="button" data-bs-toggle="dropdown">
                                    Aksi
                                </button>
                                <div class="dropdown-menu">
                                    <a href="' . route('promo.edit', $item->id) .  '" class="dropdown-item">Sunting</a>
                                    <form action="' . route("promo.destroy", $item->id) .  '" method="POST">
                                        ' . method_field('DELETE') . csrf_field() . '
                                        <button type="submit" class="dropdown-item text-danger">Hapus</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    ';
                })
                ->editColumn('photo', function ($item) {
                    return $item->thumbnail ? '<img src="' . asset($item->getPhoto()) . '" style="max-width: 240px;" />' : '';
                })
                ->rawColumns(['action', 'photo'])
                ->make();
        }

        return view('pages.admin.promo.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Promo $promo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Promo $promo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Promo $promo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Promo $promo)
    {
        //
    }
}
