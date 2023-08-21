@extends('layouts.dashboard')

@section('title', 'Product Details')

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">Sirup Marza</h2>
                <p class="dashboard-subtitle">
                    Products Details
                </p>
            </div>
            <div class="dashboard-contennt">
                <div class="row">
                    <div class="col-12">
                        <form action="{{ route('dashboard-product-update', $product->id) }}" method="POST">
                            @method('PUT')
                            @csrf
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="meta_keyword">Meta Keyword</label>
                                                <input type="text" name="meta_keyword" id="meta_keyword"
                                                    class="form-control" value="{{ $product->meta_keyword }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="meta_description">Meta Description</label>
                                                <input type="text" name="meta_description" id="meta_description"
                                                    class="form-control" value="{{ $product->meta_description }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class='form-label' for="name">Product Name</label>
                                                <input type="text" name="name" id="name" class="form-control"
                                                    value="{{ $product->name }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class='form-label' for="price">Harga</label>
                                                <input type="number" name="price" id="price" class="form-control"
                                                    value="{{ $product->price }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="discon_price">Harga Diskon</label>
                                                <input type="number" name="discon_price" id="discon_price"
                                                    class="form-control" value="{{ $product->discon_price }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class='form-label' for="">Kategori</label>
                                                <select name="category_id" class="form-select">
                                                    <option value="" disabled>Select Category</option>
                                                    @foreach ($categories as $category)
                                                        <option value="{{ $category->id }}"
                                                            {{ $category->id == $product->category_id ? 'selected' : '' }}>
                                                            {{ $category->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="link_youtube">Link Youtube</label>
                                                <input type="text" name="link_youtube" id="link_youtube"
                                                    class="form-control" value="{{ $product->link_youtube }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class="form-label d-block mb-0" for="Ukuran">Ukuran</label>
                                                <small class="text-muted d-block mb-2">Centang ukuran yang tersedia</small>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $product->size_s ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_s" id="s">
                                                    <label class="form-check-label" for="s">
                                                        S
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $product->size_m ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_m" id="m">
                                                    <label class="form-check-label" for="m">
                                                        M
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $product->size_l ? 'checked' : '' }} class="form-check-input"
                                                        type="checkbox" name="size_l" id="l">
                                                    <label class="form-check-label" for="l">
                                                        L
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $product->size_xl ? 'checked' : '' }}
                                                        class="form-check-input" type="checkbox" name="size_xl"
                                                        id="xl">
                                                    <label class="form-check-label" for="xl">
                                                        XL
                                                    </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input {{ $product->size_xxl ? 'checked' : '' }}
                                                        class="form-check-input" type="checkbox" name="size_xxl"
                                                        id="xxl">
                                                    <label class="form-check-label" for="xxl">
                                                        XXL
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mt-3">
                                                <div class="form-group" id="spesifikasi">
                                                    <label for="discon_price" class="form-label">Spesifikasi
                                                        Produk</label>
                                                    <div class="row g-3 mb-2">
                                                        <div class="col-6 spesifikasiDiv">
                                                            <input required type="text" name="spesifications[0][name]"
                                                                class="form-control" placeholder="spesifikasi">
                                                        </div>
                                                        <div class="col-6">
                                                            <input required type="text"
                                                                name="spesifications[0][description]" class="form-control"
                                                                placeholder="deskripsi">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12"><button class="btn btn-outline-success w-100"
                                                        type="button" onclick="addSpesifikasi()">+ Tambah
                                                        Spesifikasi</button></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mt-3">
                                                <div class="form-group" id="variasi">
                                                    <label for="discon_price" class="form-label">Variasi
                                                        Produk</label>
                                                    <div class="row g-3 mb-2">
                                                        <div class="col-6">
                                                            <input required type="text" name="variations[0][name]"
                                                                class="form-control" placeholder="Nama Variasi">
                                                        </div>
                                                        <div class="col-6">
                                                            <input required type="text" name="variations[0][type]"
                                                                class="form-control" placeholder="Pilihan Variasi">
                                                        </div>
                                                        <div class="col-4">
                                                            <input type="file" name="variations[0][photos]"
                                                                class="form-control">
                                                        </div>
                                                        <div class="col-4">
                                                            <input required type="number" name="variations[0][price]"
                                                                class="form-control" placeholder="Harga Variasi">
                                                        </div>
                                                        <div class="col-4">
                                                            <input required type="number" name="variations[0][stok]"
                                                                class="form-control" placeholder="Stok">
                                                        </div>
                                                        <hr>
                                                    </div>
                                                </div>
                                                <div class="col-12"><button class="btn btn-outline-success w-100"
                                                        type="button" onclick="addVariasi()">+ Tambah
                                                        Variasi</button></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class='form-label' for="description">Description</label>
                                                <textarea name="description">{{ $product->description }}</textarea>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-3">
                                            <button type="submit" class="btn btn-success w-100 d-block">Update</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row g-3">
                                    @foreach ($product->galleries as $photos)
                                        <div class="col-md-2">
                                            <form method="POST"
                                                action="{{ route('dashboard-product-delete-photo', $photos->id) }}"
                                                class="gallery-container">
                                                @csrf
                                                @method('DELETE')
                                                <img src="{{ $photos->getPhotos() }}" alt="" class="w-100">
                                                <button href="" class="delete-gallery btn btn-sm">
                                                    <img src="/images/icon-delete.svg" alt="">
                                                </button>
                                            </form>
                                        </div>
                                    @endforeach
                                    <form class="col-md-2"
                                        action="{{ route('dashboard-product-update-add-image', $product->id) }}"
                                        method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <input type="file" name="thumbnail[]" id="file" hidden
                                            onchange="form.submit()" multiple>
                                        <button type="button" class="btn btn-secondary w-100 h-100 d-block fs-1 fw-bold"
                                            onclick="thisFileUpload()">+
                                        </button>
                                        {{-- <input type="submit" id="submit" class="d-none"> --}}
                                    </form>
                                </div>
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
        CKEDITOR.replace('description');
    </script>
    <script>
        function thisFileUpload() {
            document.getElementById('file').click()
        }
    </script>
    <script>
        function addSpesifikasi() {
            let i = $('.spesifikasiDiv').length;
            $('#spesifikasi').append(
                `<div class="row g-3 mb-2 spesifikasiDiv"><div class="col-6"><input type="text" required name="spesifications[${i}][name]"class="form-control" placeholder="spesifikasi"/></div><div class="col-6"><input required type="text" name="spesifications[${i}][description]" class="form-control" placeholder="deskripsi"></div></div>`
            );
        }

        function addVariasi() {
            let i = $('.variasiDiv').length;
            $('#variasi').append(
                `<div class="form-group mb-3 variasiDiv"><div class="row g-3 mb-2"><div class="col-6"><input required type="text" name="variations[${i}][name]" class="form-control" placeholder="Nama Variasi"></div><div class="col-6"><input required type="text" name="variations[${i}][type]" class="form-control" placeholder="Pilihan Variasi"></div><div class="col-4"><input required type="file" name="variations[${i}][photos]" class="form-control"></div><div class="col-4"><input type="number" required name="variations[${i}][price]" class="form-control" placeholder="Harga Variasi"></div><div class="col-4"><input required type="number" name="variations[${i}][stok]" class="form-control" placeholder="Stok"></div><hr></div>`
            );
        }
    </script>
@endpush
