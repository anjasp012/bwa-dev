@extends('layouts.dashboard')

@section('title', 'Account Setting')

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">My Account</h2>
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
                                                <label class="form-label" for="yourName">Your Name</label>
                                                <input type="text" class="form-control" id="yourName" name="yourName"
                                                    value="Papel La Casa">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="form-label" for="yorEmail">Your Email</label>
                                                <input type="text" class="form-control" id="yorEmail" name="yorEmail"
                                                    value="Papel La Casa">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="addressOne">Addres 1</label>
                                                <input type="text" class="form-control" id="addressOne" name="addressOne"
                                                    value="Setra Duta Cemara">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="addressTwo">Addres 2</label>
                                                <input type="text" class="form-control" id="addressTwo" name="addressTwo"
                                                    value="Blok B2 No. 34">
                                            </div>
                                        </div>
                                        <div class="col-md-4 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="province">Province</label>
                                                <select name="province" id="province" class="form-select">
                                                    <option value="West Java">West Java</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="city">City</label>
                                                <select name="city" id="city" class="form-select">
                                                    <option value="Bandung">Bandung</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="postalCode">Postal Code</label>
                                                <input type="text" class="form-control" id="postalCode" name="postalCode"
                                                    value="123999">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="country">Country</label>
                                                <input type="text" class="form-control" id="country" name="country"
                                                    value="Indonesia">
                                            </div>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <div class="form-group">
                                                <label class="form-label" for="mobile">Mobile</label>
                                                <input type="text" class="form-control" id="mobile" name="mobile"
                                                    value="+628 2020 11111">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col mt-3 text-end">
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
