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
                                                <label class='form-label' for="name">Product Name</label>
                                                <input type="text" name="name" id="name" class="form-control"
                                                    value="{{ $product->name }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
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
@endpush
