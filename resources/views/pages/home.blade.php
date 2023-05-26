@extends('layouts.app')

@section('title', 'HomePage')

@section('content')
    <div class="page-content page-home">
        <section class="store-carousel">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12" data-aos="zoom-in">
                        <div id="storeCarousel" class="carousel slide" data-bs-ride="carousel">
                            <ol class="carousel-indicators">
                                @foreach ($sliders as $key => $slider)
                                    <li class="{{ $key == 0 ? 'active' : '' }}" data-bs-target="#storeCarousel"
                                        data-bs-slide-to="{{ $key }}"></li>
                                @endforeach
                            </ol>
                            <div class="carousel-inner">
                                @foreach ($sliders as $key => $slider)
                                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                                        <img src="{{ asset($slider->getPhoto()) }}"
                                            class="d-block w-100 rounded-2 carouselHeight">
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="store-promo">
            <div class="container">
                <div class="row">
                    <div class="col-12" data-aos="fade-up">
                        <h5>Promo</h5>
                    </div>
                </div>
                <div class="row">
                    <div class="owl-carousel owl-theme">
                        <div class="item">
                            <h4>1</h4>
                        </div>
                        <div class="item">
                            <h4>2</h4>
                        </div>
                        <div class="item">
                            <h4>3</h4>
                        </div>
                        <div class="item">
                            <h4>4</h4>
                        </div>
                        <div class="item">
                            <h4>5</h4>
                        </div>
                        <div class="item">
                            <h4>6</h4>
                        </div>
                        <div class="item">
                            <h4>7</h4>
                        </div>
                        <div class="item">
                            <h4>8</h4>
                        </div>
                        <div class="item">
                            <h4>9</h4>
                        </div>
                        <div class="item">
                            <h4>10</h4>
                        </div>
                        <div class="item">
                            <h4>11</h4>
                        </div>
                        <div class="item">
                            <h4>12</h4>
                        </div>
                    </div>
                    @forelse ($promos as $key => $promo)
                        <div class="col-6 col-md-3 col-lg-2" data-aos="fade-up" data-aos-delay="{{ ($key + 1) * 100 }}">
                            <a href="{{ route('categories-details', $promo->slug) }}" class="component-categories d-block">
                                <div class="categories-image">
                                    <img src="{{ asset($promo->getPhoto()) }}" alt="" class="w-100">
                                </div>
                                <p class="categories-text">{{ $promo->name }}</p>
                            </a>
                        </div>
                    @empty
                        <div class="col-12 text-center py-5" data-aos="fade-up" data-aos-delay="100">
                            No Promo Found
                        </div>
                    @endforelse
                </div>
            </div>
        </section>
        <section class="store-trend-categories">
            <div class="container">
                <div class="row">
                    <div class="col-12" data-aos="fade-up">
                        <h5>Trend Categories</h5>
                    </div>
                </div>
                <div class="row">
                    @forelse ($categories as $key => $category)
                        <div class="col-6 col-md-3 col-lg-2" data-aos="fade-up" data-aos-delay="{{ ($key + 1) * 100 }}">
                            <a href="{{ route('categories-details', $category->slug) }}"
                                class="component-categories d-block">
                                <div class="categories-image">
                                    <img src="{{ asset($category->getPhoto()) }}" alt="" class="w-100">
                                </div>
                                <p class="categories-text">{{ $category->name }}</p>
                            </a>
                        </div>
                    @empty
                        <div class="col-12 text-center py-5" data-aos="fade-up" data-aos-delay="100">
                            No Categories Found
                        </div>
                    @endforelse
                </div>
            </div>
        </section>
        <section class="store-new-products">
            <div class="container">
                <div class="row">
                    <div class="col-12" data-aos="fade-up">
                        <h5>New Products</h5>
                    </div>
                </div>
                <div class="row">
                    @forelse ($products as $key => $product)
                        <div class="col-6 col-md-4 col-lg-3" data-aos="fade-up" data-aos-delay="{{ ($key + 1) * 100 }}">
                            <a href="{{ route('detail', $product->slug) }}" class="component-products d-block">
                                <div class="products-thumbnail">
                                    <div class="products-image"
                                        style={{ $product->galleries->count() > 0 ? 'background-image:url(' . asset($product->galleries->first()->getPhotos()) . ');' : 'background-color:#eee;' }}>
                                    </div>
                                </div>
                                <div class="products-text">
                                    {{ $product->name }}
                                </div>
                                @if ($product->discon_price > 0)
                                    <div class="products-price text-dark fw-lighter text-decoration-line-through"
                                        style="font-size: 12px">
                                        Rp. {{ number_format($product->price, '0', '.', '.') }}
                                    </div>
                                    <div class="products-price">
                                        Rp. {{ number_format($product->discon_price, '0', '.', '.') }}
                                    </div>
                                @else
                                    <div class="products-price text-dark fw-lighter text-decoration-line-through"
                                        style="font-size: 12px">
                                        Rp. -
                                    </div>
                                    <div class="products-price">
                                        Rp. {{ number_format($product->price, '0', '.', '.') }}
                                    </div>
                                @endif
                            </a>
                        </div>
                    @empty
                        <div class="col-12 text-center py-5" data-aos="fade-up" data-aos-delay="100">
                            No Products Found
                        </div>
                    @endforelse
                </div>
            </div>
        </section>
        <section class="store-testimonies">
            <div class="container">
                <div class="row">
                    <div class="col-12" data-aos="fade-up">
                        <h5>Testimoni</h5>
                    </div>
                </div>
                @if ($testimonies->count() > 0)
                    <div class="owl-carousel owl-theme">
                        @foreach ($testimonies as $key => $testimoni)
                            <div class="item pb-2" data-aos="fade-up" data-aos-delay="{{ ($key + 1) * 100 }}">
                                <div class="card shadow-sm">
                                    <div class="card-body">
                                        <h6 class="font-sm text-primary mb-3">
                                            {{ $testimoni->name }}
                                        </h6>
                                        <img src="{{ asset($testimoni->getPhoto()) }}" class="img-fluid mb-3"
                                            style="width: 100px" alt="">
                                        <div>
                                            {!! $testimoni->description !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @else
                    <div class="row">
                        <div class="col-12 text-center py-5" data-aos="fade-up" data-aos-delay="100">
                            No Testimoni
                        </div>
                    </div>
                @endif
            </div>
        </section>
        <section class="store-new-articles">
            <div class="container">
                <div class="row">
                    <div class="col-12" data-aos="fade-up">
                        <h5>Berita Terbaru</h5>
                    </div>
                </div>
                <div class="row">
                    @forelse ($articles as $key => $article)
                        <div class="col-6 col-md-4 col-lg-3" data-aos="fade-up" data-aos-delay="{{ ($key + 1) * 100 }}">
                            <a href="{{ route('berita.show', $article->slug) }}" class="component-products d-block">
                                <div class="products-thumbnail">
                                    <div class="products-image"
                                        style={{ $article->thumbnail ? 'background-image:url(' . asset($article->getPhoto()) . ');' : 'background-color:#eee;' }}>
                                    </div>
                                </div>
                                <div class="products-text" style="font-size: 14px">
                                    {{ $article->title }}
                                </div>
                            </a>
                        </div>
                    @empty
                        <div class="col-12 text-center py-5" data-aos="fade-up" data-aos-delay="100">
                            No Products Found
                        </div>
                    @endforelse
                </div>
            </div>
        </section>
    </div>
@endsection

@push('addon-style')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"
        integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
@endpush

@push('addon-script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
@endpush

@push('addon-script')
    <script>
        $('.owl-carousel').owlCarousel({
            loop: false,
            margin: 10,
            nav: true,
            dots: false,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 3
                }
            }
        })

        $('.owl-promo').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        })
    </script>
@endpush
