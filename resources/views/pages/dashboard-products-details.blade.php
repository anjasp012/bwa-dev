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
                        <form action="">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class='form-label' for="">Product Name</label>
                                                <input type="text" name="" id="" class="form-control"
                                                    value="Papel La Casa">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class='form-label' for="">Price</label>
                                                <input type="number" name="" id="" class="form-control"
                                                    value="100.00">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class='form-label' for="">Kategori</label>
                                                <select name="category" class="form-select">
                                                    <option value="" disabled>Select Category</option>
                                                    <option value="" selected>Shipping</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class='form-label' for="">Description</label>
                                                <textarea name="editor1">The Nike Air Max 720 SE goes bigger than ever before with Nike's tallest Air unit yet for
                                                unimaginable, all-day comfort. There's super breathable fabrics on the upper, while
                                                colours add a modern edge. Bring the past into the future with the Nike Air Max 2090,
                                                a bold look inspired by the DNA of the iconic Air Max 90. Brand-new Nike Air cushioning </textarea>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-3">
                                            <button type="button" class="btn btn-success w-100 d-block">Update</button>
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
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="gallery-container">
                                            <img src="/images/product-card-1.png" alt="" class="w-100">
                                            <a href="" class="delete-gallery">
                                                <img src="/images/icon-delete.svg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="gallery-container">
                                            <img src="/images/product-card-1.png" alt="" class="w-100">
                                            <a href="" class="delete-gallery">
                                                <img src="/images/icon-delete.svg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="gallery-container">
                                            <img src="/images/product-card-1.png" alt="" class="w-100">
                                            <a href="" class="delete-gallery">
                                                <img src="/images/icon-delete.svg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-12 mt-3">
                                        <input type="file" name="" id="file" class="d-none " multiple>
                                        <button class="btn btn-secondary w-100 d-block " onclick="thisFileUpload()">Add
                                            Photo</button>
                                    </div>
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
        CKEDITOR.replace('editor1');
    </script>
    <script>
        function thisFileUpload() {
            document.getElementById('file').click()
        }
    </script>
@endpush
