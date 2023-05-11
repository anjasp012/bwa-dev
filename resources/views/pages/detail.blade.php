@extends('layouts.app')

@section('title')
    Product Detail | {{ $product->name }}
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
                                    <a href="/index.html">Home</a>
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
                <div class="col-lg-8">
                    <section class="store-gallery mb-3" id="gallery">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 col-lg-9" data-aos="zoom-in">
                                    <transition name="slide-fade" mode="out-in">
                                        <img :src="photos[activePhoto].url" :key="photos[activePhoto].id" alt=""
                                            class="w-100">
                                    </transition>
                                </div>
                                <div class="col-lg-2">
                                    <div class="row">
                                        <div class="col-3 col-lg-12 mt-2 mt-lg-0" v-for="(photo, index) in photos"
                                            :key="photo.id" data-aos="zoom-in" data-aos-delay="100">
                                            <a href="#" @click="changeActive(index)">
                                                <img :src="photo.url" class="w-100 thumbnail-image"
                                                    :class="{ active: index == activePhoto }" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <div class="store-details-container" data-aos="fade-up">
                        <section class="store-heading">
                            <div class="container">
                                <div class="row">
                                    <div class="col-7 col-lg-8">
                                        <h1>{{ $product->name }}</h1>
                                        <div class="owner">{{ $product->user->store_name ?? ($product->user->name ?? '') }}
                                        </div>
                                        <div class="price">Rp. {{ number_format($product->price, '0', '.', '.') }}</div>
                                    </div>
                                    <div class="col-5 col-lg-4" data-aos="zoom-in">
                                        @auth
                                            <form action="{{ route('detail-add', $product->id) }}" method="POST"
                                                enctype="multipart/form-data">
                                                @csrf
                                                <button type="submit" class="btn btn-success px-4 text-white btn-block mb-3">
                                                    Add To Cart
                                                </button>
                                            </form>
                                        @else
                                            <a href="{{ route('login') }}"
                                                class="btn btn-success px-4 text-white btn-block mb-3">
                                                Sign in to Add
                                            </a>
                                        @endauth
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="store-description">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 col-lg-8">
                                        {!! $product->description !!}
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-12" data-aos="fade-up">
                            <h5>Produk Terkait</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 col-lg-12" data-aos="fade-up">
                            <a href="{{ route('detail', $product->slug) }}" class="component-products d-block">
                                <div class="products-thumbnail">
                                    <div class="products-image"
                                        style={{ $product->galleries->count() > 0 ? 'background-image:url(' . asset($product->galleries->first()->getPhotos()) . ');' : 'background-color:#eee;' }}>
                                    </div>
                                </div>
                                <div class="products-text">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="products-price">
                                    Rp. 800000
                                </div>
                            </a>
                        </div>
                        <div class="col-6 col-lg-12" data-aos="fade-up">
                            <a href="{{ route('detail', $product->slug) }}" class="component-products d-block">
                                <div class="products-thumbnail">
                                    <div class="products-image"
                                        style={{ $product->galleries->count() > 0 ? 'background-image:url(' . asset($product->galleries->first()->getPhotos()) . ');' : 'background-color:#eee;' }}>
                                    </div>
                                </div>
                                <div class="products-text">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="products-price">
                                    Rp. 800000
                                </div>
                            </a>
                        </div>
                        <div class="col-6 col-lg-12" data-aos="fade-up">
                            <a href="{{ route('detail', $product->slug) }}" class="component-products d-block">
                                <div class="products-thumbnail">
                                    <div class="products-image"
                                        style={{ $product->galleries->count() > 0 ? 'background-image:url(' . asset($product->galleries->first()->getPhotos()) . ');' : 'background-color:#eee;' }}>
                                    </div>
                                </div>
                                <div class="products-text">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="products-price">
                                    Rp. 800000
                                </div>
                            </a>
                        </div>
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
    </script>
@endpush
