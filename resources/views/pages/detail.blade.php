@extends('layouts.app')

@section('title')
    Product Detail | {{ $product->name }}
@endsection

@section('meta')
    <meta name="description" content="{{ $product->meta_description }}">
    <meta name="keywords" content="{{ $product->meta_keyword }}">
@endsection

@section('content')
    <div class="page-content page-details">
        <section class="store-breadcrumbs" data-aos="fade-down" data-aos-delay="100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/">Home</a>
                                </li>
                                <li class="breadcrumb-item active">
                                    Product Details
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="row justify-content-between gy-5">
                <div class="col-lg-12">
                    <section class="store-gallery mb-3" id="gallery">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 col-lg-5" data-aos="zoom-in">
                                    <transition name="slide-fade" mode="out-in">
                                        <img :src="photos[activePhoto].url" :key="photos[activePhoto].id" alt=""
                                            class="w-100">
                                    </transition>
                                    <div class="row">
                                        <div class="col-3 col-lg-3 mt-2" v-for="(photo, index) in photos"
                                            :key="photo.id" data-aos="zoom-in" data-aos-delay="100">
                                            <a href="#" @click="changeActive(index)">
                                                <img :src="photo.url" class="w-100 thumbnail-image"
                                                    :class="{ active: index == activePhoto }" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="store-details-container" data-aos="fade-up">
                                        <section class="store-heading">
                                            <div class="container">
                                                <form action="{{ route('detail-add', $product->id) }}" method="POST"
                                                    enctype="multipart/form-data">
                                                    @csrf
                                                    <div class="row">
                                                        <div class="col-12 mb-3">
                                                            <h1>{{ $product->name }}</h1>
                                                            <div class="owner">
                                                                {{ $product->user->store_name ?? ($product->user->name ?? '') }}
                                                            </div>
                                                            {{-- @if ($product->discon_price > 0)
                                                                <div class="mb-0 price text-dark fw-lighter text-decoration-line-through"
                                                                    style="font-size: 14px">
                                                                    Rp. {{ number_format($product->price, '0', '.', '.') }}
                                                                </div>
                                                                <div class="price">Rp.
                                                                    {{ number_format($product->discon_price, '0', '.', '.') }}
                                                                </div>
                                                            @else
                                                                <div class="mb-0 price text-dark fw-lighter text-decoration-line-through"
                                                                    style="font-size: 14px">
                                                                    Rp. -
                                                                </div>
                                                                <div class="price">Rp.
                                                                    {{ number_format($product->price, '0', '.', '.') }}
                                                                </div>
                                                            @endif --}}
                                                            <div class="price" id="hargaVariasi">Rp.
                                                                {{ number_format($product->variationLowerPrice->price, '0', '.', '.') }}
                                                                -
                                                                {{ number_format($product->variationHigherPrice->price, '0', '.', '.') }}
                                                            </div>
                                                            <div class="mb-2">
                                                                <div>Ukuran</div>
                                                                <div class="d-flex gap-2">
                                                                    <input {{ $product->size_s ? '' : 'disabled' }}
                                                                        type="radio" class="btn-check" name="size"
                                                                        value="s" id="s">
                                                                    <label class="btn btn-outline-dark"
                                                                        for="s">S</label>
                                                                    <input {{ $product->size_m ? '' : 'disabled' }}
                                                                        type="radio" class="btn-check" name="size"
                                                                        value="m" id="m">
                                                                    <label class="btn btn-outline-dark"
                                                                        for="m">M</label>
                                                                    <input {{ $product->size_l ? '' : 'disabled' }}
                                                                        type="radio" class="btn-check" name="size"
                                                                        value="l" id="l">
                                                                    <label class="btn btn-outline-dark"
                                                                        for="l">L</label>
                                                                    <input {{ $product->size_xl ? '' : 'disabled' }}
                                                                        type="radio" class="btn-check" name="size"
                                                                        value="xl" id="xl">
                                                                    <label class="btn btn-outline-dark"
                                                                        for="xl">XL</label>
                                                                    <input {{ $product->size_xxl ? '' : 'disabled' }}
                                                                        type="radio" class="btn-check" name="size"
                                                                        value="xxl" id="xxl">
                                                                    <label class="btn btn-outline-dark"
                                                                        for="xxl">XXL</label>
                                                                </div>
                                                                @error('size')
                                                                    <small class="text-danger">silahkan pilih size !</small>
                                                                @enderror
                                                            </div>
                                                            <div>
                                                                <div>Variasi</div>
                                                                <div class="col-12">
                                                                    @foreach ($product->variations as $variation)
                                                                        <input
                                                                            onclick="hargaVariasi({{ number_format($variation->price, '0', '.', '.') }})"
                                                                            type="radio" class="btn-check"
                                                                            name="variation" value="{{ $variation->id }}"
                                                                            id="{{ $variation->id }}">
                                                                        <label class="btn btn-outline-dark mb-1"
                                                                            for="{{ $variation->id }}">{{ $variation->name }}
                                                                        </label>
                                                                    @endforeach
                                                                    @error('variation')
                                                                        <small class="text-danger d-block">silahkan pilih
                                                                            Variasi
                                                                            !</small>
                                                                    @enderror
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-12" data-aos="zoom-in">
                                                            @auth
                                                                @if (auth()->id() != $product->user_id && auth()->user()->roles != 'ADMIN')
                                                                    <button type="submit"
                                                                        class="btn btn-success px-4 text-white btn-block mb-3">
                                                                        Add To Cart
                                                                    </button>
                                                                @endif
                                                            @else
                                                                <a href="{{ route('login') }}"
                                                                    class="btn btn-success px-4 text-white btn-block mb-3">
                                                                    Sign in to Add
                                                                </a>
                                                            @endauth
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <div class="store-details-container" data-aos="fade-up">
                        <section class="store-description">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <h5>Produk Terkait</h5>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            @forelse ($productSimilar as $similar)
                                                <div class="col-6 col-lg-2" data-aos="fade-up">
                                                    <a href="{{ route('detail', $similar->slug) }}"
                                                        class="component-products d-block">
                                                        <div class="products-thumbnail">
                                                            <div class="products-image"
                                                                style={{ $similar->galleries->count() > 0 ? 'background-image:url(' . asset($similar->galleries->first()->getPhotos()) . ');' : 'background-color:#eee;' }}>
                                                            </div>
                                                        </div>
                                                        <div class="products-text">
                                                            {{ $similar->name }}
                                                        </div>
                                                        @if ($similar->discon_price > 0)
                                                            <div class="products-price text-dark fw-lighter text-decoration-line-through"
                                                                style="font-size: 12px">
                                                                Rp. {{ number_format($similar->price, '0', '.', '.') }}
                                                            </div>
                                                            <div class="products-price">
                                                                Rp.
                                                                {{ number_format($similar->discon_price, '0', '.', '.') }}
                                                            </div>
                                                        @else
                                                            <div class="products-price text-dark fw-lighter text-decoration-line-through"
                                                                style="font-size: 12px">
                                                                Rp. -
                                                            </div>
                                                            <div class="products-price">
                                                                Rp. {{ number_format($similar->price, '0', '.', '.') }}
                                                            </div>
                                                        @endif
                                                    </a>
                                                </div>
                                            @empty
                                            @endforelse
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="store-description">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <h5>Spesifikasi Produk</h5>
                                    </div>
                                    <div class="col-12">
                                        <table class="table table-borderless">
                                            @foreach ($product->spesifications as $spesification)
                                                <tr>
                                                    <td class="w-25 px-0">
                                                        <div class="text-secondary">
                                                            {{ $spesification->name }}
                                                        </div>
                                                    </td>
                                                    <td>{{ $spesification->description }}</td>
                                                </tr>
                                            @endforeach
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="store-description">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <h5>Deskripsi Produk</h5>
                                    </div>
                                    <div class="col-12">
                                        {!! $product->description !!}
                                    </div>
                                    @isset($product->link_youtube)
                                        <div class="col-lg-5">
                                            <div class="ratio ratio-16x9 rounded overflow-hidden">
                                                <iframe src="{{ $product->link_youtube }}" title="YouTube video"
                                                    allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    @endisset
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('addon-script')
    <script src="/vendor/vue/vue.js"></script>
    <script>
        var gallery = new Vue({
            el: "#gallery",
            mounted() {
                AOS.init();
            },
            data: {
                activePhoto: 0,
                photos: [
                    @foreach ($product->galleries as $key => $gallery)
                        {
                            id: {{ $key + 1 }},
                            url: "{{ asset($gallery->getPhotos()) }}",
                        },
                    @endforeach
                ],
            },
            methods: {
                changeActive(id) {
                    this.activePhoto = id
                },
            },
        });

        function hargaVariasi(harga) {
            $('#hargaVariasi').html('Rp. ' +
                harga)
        }
    </script>
@endpush
