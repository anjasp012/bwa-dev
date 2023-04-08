@extends('layouts.dashboard')

@section('title', 'Product Create')

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">Create New Product</h2>
                <p class="dashboard-subtitle">
                    Create your own product
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
                                                <label class="form-label" for="">Product Name</label>
                                                <input type="text" name="" id="" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Price</label>
                                                <input type="number" name="" id="" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="">Kategori</label>
                                                <select name="category" class="form-select">
                                                    <option value="" disabled selected>Select Category</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="">Description</label>
                                                <textarea name="editor1"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="">Thumbnail</label>
                                                <input type="file" name="" id="" class="form-control">
                                                <small class="text-muted">Kamu dapat memilih lebih dari satu file</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col text-right">
                                    <button type="button" class="btn btn-success px-5 w-100">Create</button>
                                </div>
                            </div>
                        </form>
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
