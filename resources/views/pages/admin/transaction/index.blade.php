@extends('layouts.admin')

@section('title', 'Transactions')

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">Transaction</h2>
                <p class="dashboard-subtitle">
                    List Of Transactions
                </p>
            </div>
            <div class="dashboard-contennt">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <a href="{{ route('product.create') }}" class="btn btn-primary mb-3">+ Tambah Produk
                                    Baru</a>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover scroll-horizontal-vertical w-100"
                                        id='crudTable'>
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nama</th>
                                                <th>No Hp</th>
                                                <th>Harga</th>
                                                <th>Status</th>
                                                <th>Dibuat</th>
                                                <th>Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
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
    <script>
        var datatable = $('#crudTable').DataTable({
            processing: true,
            serverSide: true,
            ordering: true,
            ajax: {
                url: '{!! url()->current() !!}',
            },
            columns: [{
                    data: 'id',
                    name: 'id'
                },
                {
                    data: 'user.name',
                    name: 'user.name'
                },
                {
                    data: 'user.phone_number',
                    name: 'user.phone_number'
                },
                {
                    data: 'total_price',
                    name: 'total_price'
                },
                {
                    data: 'transaction_status',
                    name: 'transaction_status'
                },
                {
                    data: 'created_at',
                    name: 'created_at'
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searcable: false,
                    width: '15%'
                },
            ]
        })
    </script>
@endpush
