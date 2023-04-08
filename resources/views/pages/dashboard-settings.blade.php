@extends('layouts.dashboard')

@section('title', 'Store Setting')

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">Store Setting</h2>
                <p class="dashboard-subtitle">
                    Make store that profitable
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
                                                <label class="form-label" for="">Nama Toko</label>
                                                <input type="text" name="" id="" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="">Kategori</label>
                                                <select name="category" class="form-select">
                                                    <option value="" disabled selected>Select Category</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="">Store Status</label>
                                                <p class="text-muted">Apakah saat ini toko Anda buka?</p>
                                                <div class="d-flex gap-3">
                                                    <div class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" class="custom-control-input"
                                                            name="is_store_open" id="openStoreTrue" value="true">
                                                        <label class="form-label" for="openStoreTrue"
                                                            class="custom-control-label">
                                                            Buka
                                                        </label>
                                                    </div>
                                                    <div class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" class="custom-control-input"
                                                            name="is_store_open" id="openStoreFalse" value="false">
                                                        <label class="form-label" for="openStoreFalse"
                                                            class="custom-control-label">
                                                            Sementara Tutup
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col text-end">
                                            <button type="button" class="btn btn-success px-5">Save Now</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
