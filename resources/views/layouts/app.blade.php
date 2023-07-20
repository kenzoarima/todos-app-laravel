<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
    <link href="https://fonts.bunny.net/css?family=alexandria:400" rel="stylesheet" />

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

<style>
body {
  background: #336cce;
  color: #fff;
}

.navbar,
.dropdown-menu {
    background: #4149c3;
    color: #fff;
}
.navbar a,
.navbar a:hover {
    color: #fff;
    text-shadow: 2px 0 0px rgba(0,0,0,0.3), 0 2px 0px rgba(0,0,0,0.3), 0 -2px 0px rgba(0,0,0,0.3), -2px 0 0px rgba(0,0,0,0.3);
}

.navbar-brand {
    font-family: 'Alexandria', sans-serif;
    text-transform: uppercase;
    font-size: 24px;
    width: calc(100% - 70px);
    text-align: center;
}

.navbar-nav .nav-link.active, .navbar-nav .nav-link.show {
    color: #fff;
}

.dropdown-item:hover, 
.dropdown-item:focus {
    background: #336cce;
    color: #fff;
}

.card {
    box-shadow: 0px 5px 5px rgba(0,0,0,0.3);
}

.card-header {
    background-color: #ffd700 !important;
    font-weight: bold !important;
}

.style-inline-block {
    display: inline-block;
}

</style>

</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light zzbg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ route('todos.index') }}">
                    Todos
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
