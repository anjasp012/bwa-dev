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
                                <form id="product" action="{{ route('product.update', $item->id) }}" method="POST"
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
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label class="form-label" for="meta_description">Meta Description</label>
                                                <input type="text" name="meta_description" id="meta_description"
                                                    class="form-control" value="{{ $item->meta_description }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label for="name" class="form-label">Nama Produk</label>
                                                <input type="text" name="name" id="name" class="form-control"
                                                    value="{{ $item->name }}" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label for="user_id" class="form-label">Pemilik Produk</label>
                                                <select name="user_id" id="user_id" class="form-select" required>
                                                    <option value="{{ $item->user->id }}" selected>Tidak Diubah</option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">{{ $user->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group mb-3">
                                                <label for="header_category_id" class="form-label">Header Kategori</label>
                                                <select name="header_category_id" id="header_category_id"
                                                    class="form-select" v-if="headerCategories" v-model="header_category_id"
                                                    required>
                                                    <option value="null" selected disabled>Pilih ..</option>
                                                    <option v-for="headerCategory in headerCategories"
                                                        :value="headerCategory.id">
                                                        @{{ headerCategory.name }}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group mb-3">
                                                <label for="sub_header_category_id" class="form-label">Sub-Header
                                                    Kategori</label>
                                                <select name="sub_header_category_id" id="sub_header_category_id"
                                                    class="form-select" v-if="subHeaderCategories"
                                                    v-model="sub_header_category_id" required>
                                                    <option value="null" selected disabled>Pilih ..</option>
                                                    <option v-for="subHeaderCategory in subHeaderCategories"
                                                        :value="subHeaderCategory.id">
                                                        @{{ subHeaderCategory.name }}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group mb-3">
                                                <label for="category_id" class="form-label">
                                                    Kategori</label>
                                                <select name="category_id" id="category_id" class="form-select"
                                                    v-if="categories" v-model="category_id" required>
                                                    <option value="null" selected disabled>Pilih ..</option>
                                                    <option v-for="category in categories" :value="category.id">
                                                        @{{ category.name }}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label for="price" class="form-label">Harga Produk</label>
                                                <input type="number" name="price" id="price" class="form-control"
                                                    value="{{ $item->price }}" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label for="discon_price" class="form-label">Harga Diskon</label>
                                                <input type="number" name="discon_price" id="discon_price"
                                                    class="form-control" value="{{ $item->discon_price }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label class="form-label" for="link_youtube">Link Youtube</label>
                                                <input type="text" name="link_youtube" id="link_youtube"
                                                    class="form-control" value="{{ $item->link_youtube }}">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
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
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group mb-3">
                                                <label for="description" class="form-label">Deskripsi Produk</label>
                                                <textarea name="description" id="editor1">{!! $item->description !!}</textarea>
                                            </div>
                                        </div>
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
    <script src="/vendor/vue/vue.js"></script>
    <script src="https://unpkg.com/axios@1.1.2/dist/axios.min.js"></script>
    <script>
        var locations = new Vue({
            el: "#product",
            mounted() {
                AOS.init();
                this.getHeaderCategoryData();
                this.getSubHeaderCategoryData();
                this.getCategoryData();
                // this.getOngkir();
            },
            data: {
                headerCategories: null,
                subHeaderCategories: null,
                categories: null,
                header_category_id: {{ $item->category->subHeaderCategory->header_category_id }},
                sub_header_category_id: {{ $item->category->sub_header_category_id }},
                category_id: {{ $item->category_id }},
            },
            methods: {
                getHeaderCategoryData() {
                    var self = this;
                    axios.get('{{ route('api-header-categories') }}')
                        .then(function(response) {
                            self.headerCategories = response.data;
                        })
                },
                getSubHeaderCategoryData() {
                    var self = this;
                    axios.get('{{ url('api/sub-header-categories') }}/' + self.header_category_id)
                        .then(function(response) {
                            self.subHeaderCategories = response.data;
                        })
                },
                getCategoryData() {
                    var self = this;
                    axios.get('{{ url('api/categories') }}/' + self.sub_header_category_id)
                        .then(function(response) {
                            self.categories = response.data;
                        })
                },
            },
            watch: {
                header_category_id: function(val, oldVal) {
                    this.sub_header_category_id = null,
                        this.getSubHeaderCategoryData();
                },
                sub_header_category_id: function(val, oldVal) {
                    this.category_id = null,
                        this.getCategoryData();
                },
            }
        });
    </script>
    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('editor1');
    </script>
@endpush
