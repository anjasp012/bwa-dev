<nav class="navbar navbar-expand-lg navbar-light navbar-store fixed-top navbar-fixed-top" data-aos="fade-down">
    <div class="align-items-center container">
        <a href="{{ route('home') }}" class="navbar-brand text-success fw-bold">
            Reaa-Indonesia
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <form action="{{ route('search') }}" class="d-inline-flex me-5" role="search">
                    <input class="form-control me-2" name="cari" required type="search" placeholder="pencarian..."
                        aria-label="pencarian..." value="{{ $cari ?? '' }}">
                    <button class="btn btn-sm btn-outline-success" type="submit">Cari</button>
                </form>
                <li class="nav-item">
                    <a href="{{ route('home') }}"
                        class="nav-link{{ request()->routeIs('home') ? ' active' : '' }}">Home</a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('categories') }}"
                        class="nav-link{{ request()->routeIs('categories*') ? ' active' : '' }}">Categories</a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('berita.index') }}"
                        class="nav-link{{ request()->routeIs('berita.*') ? ' active' : '' }}">Berita</a>
                </li>
                @guest
                    <li class="nav-item">
                        <a href="{{ route('register') }}" class="nav-link">Daftar</a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('login') }}" class="btn btn-success nav-link px-4 text-white">Masuk</a>
                    </li>
                @endguest
            </ul>
            @auth
                <ul class="navbar-nav d-none d-lg-flex">
                    <li class="nav-item dropdown">
                        <a href="" class="nav-link" id="navbarDropdown" role="button" data-bs-toggle="dropdown">
                            <img src="/images/user_pc.png" alt="" class="rounded-circle profile-picture mr-2">

                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item">Hi, {{ Auth::user()->name }}</a>
                            <a href="{{ auth()->user()->roles == 'ADMIN' ? '/admin' : route('dashboard') }}"
                                class="dropdown-item">Dashboard</a>
                            <a href="{{ route('dashboard-settings-account') }}" class="dropdown-item">Settings</a>
                            <div class="dropdown-divider"></div>
                            <a href="{{ route('logout') }}" class="dropdown-item"
                                onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();
                                ">Logout</a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a href="{{ route('cart') }}" class="nav-link d-inline-block mt-2">
                            @if (Auth::user()->cart->count() > 0)
                                <img src="/images/icon-cart-filled.svg" alt="">
                                <div class="cart-badge">{{ Auth::user()->cart->count() }}</div>
                            @else
                                <img src="/images/icon-cart-empty.svg" alt="">
                            @endif
                        </a>
                    </li>
                </ul>
            @endauth
        </div>
    </div>
</nav>
