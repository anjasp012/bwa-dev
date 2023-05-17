@extends('layouts.admin')

@section('title', 'Edit Product')

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">Product</h2>
                <p class="dashboard-subtitle">
                    Edit Product
                </p>
            </div>
            <div class="dashboard-contennt">
                <div class="row">
                    <div class="col-md-12">
                        @if ($errors->any)
                            @foreach ($errors->all as $error)
                                <div class="alert alert-danger">
                                    <li>{{ $error }}</li>
                                </div>
                            @endforeach
                        @endif
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('product.update', $item->id) }}" method="POST"
                                    enctype="multipart/form-data">
                                    @method('PUT')
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label class="form-label" for="meta_keyword">Meta Keyword</label>
                                                <input type="text" name="meta_keyword" id="meta_keyword"
                                                    class="form-control" value="{{ $item->meta_keyword }}">
                                            </div>
                                            <div class="form-group mb-3">
                                                <label class="form-label" for="meta_description">Meta Description</label>
                                                <input type="text" name="meta_description" id="meta_description"
                                                    class="form-control" value="{{ $item->meta_description }}">
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="name" class="form-label">Nama Produk</label>
                                                <input type="text" name="name" id="name" class="form-control"
                                                    value="{{ $item->name }}" required>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="user_id" class="form-label">Pemilik Produk</label>
                                                <select name="user_id" id="user_id" class="form-select" required>
                                                    <option value="{{ $item->user->id }}" selected>Tidak Diubah</option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">{{ $user->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="category_id" class="form-label">Kategori produk</label>
                                                <select name="category_id" id="category_id" class="form-select" required>
                                                    <option value="{{ $item->category->id }}" selected>Tidak Diubah
                                                    </option>
                                                    @foreach ($categories as $category)
                                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="price" class="form-label">Harga Produk</label>
                                                <input type="number" name="price" id="price" class="form-control"
                                                    value="{{ $item->price }}" required>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="discon_price" class="form-label">Harga Diskon</label>
                                                <input type="number" name="discon_price" id="discon_price"
                                                    class="form-control" value="{{ $item->discon_price }}">
                                            </div>

                                            <div class="form-group mb-3">
                                                <label class="form-label" for="link_youtube">Link Youtube</label>
                                                <input type="text" name="link_youtube" id="link_youtube"
                                                    class="form-control" value="{{ $item->link_youtube }}">
                                            </div>

                                            <div class="form-group mb-3">
                                                <label class="form-label d-block mb-0" for="Ukuran">Ukuran</label>
                                                <small class="text-muted d-block mb-2">Centang ukuran yang
                                                    tersedia</small>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $item->size_s ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_s" id="s">
                                                    <label class="form-check-label" for="s">
                                                        S
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $item->size_m ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_m" id="m">
                                                    <label class="form-check-label" for="m">
                                                        M
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $item->size_l ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_l" id="l">
                                                    <label class="form-check-label" for="l">
                                                        L
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $item->size_xl ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_xl" id="xl">
                                                    <label class="form-check-label" for="xl">
                                                        XL
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $item->size_xxl ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_xxl" id="xxl">
                                                    <label class="form-check-label" for="xxl">
                                                        XXL
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="description" class="form-label">Deskripsi Produk</label>
                                                <textarea name="description" id="editor1">{!! $item->description !!}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col text-end">
                                            <button class="btn btn-success px-5">Save Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('addon-script')
    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('editor1');
    </script>
@endpush
