<!DOCTYPE html>
<html lang="{{ str_replace('_','-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description=" content="IFOPLUS - Dynamic Project" />
        <meta name="author" content="Philip Tomson" />

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>@yield('title')</title>

        <!-- BEGIN SCRIPT REGION !-->
        <!-- <script src="{{ asset('js/app.js') }}" defer></script> !-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous" defer>
        </script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js" defer></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js" defer></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

        <!-- END SCRIPT REGION !-->

        <!-- BEGIN STYLE REGION !-->
        <!-- <link href="" rel="preconnect" /> Only for critical assets !-->
        <link href="https://cdn.jsdelivr.net" rel="dns-prefetch" /> <!-- DNS name resolve (DNS cache) !-->
        <!-- <link href="" rel="prefetch" /> low priority download, not sure to be loaded !-->
        <!--<link href="" rel="preload" />  Forced and prioritized download !-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
              rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous"
        />
        <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet" />

        <!-- <link href="{{ asset('css/app.css') }}" rel="stylesheet" /> !-->
        <!-- END STYLE REGION !-->
    </head>
    <body class="d-flex flex-column h-100">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                  <a class="navbar-brand" href=" {{ route('home') }} ">
                    <img src="{{ route('home') }}/images/DCW-logo.png"/>
                  </a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('home') ? 'active' : '' }}" aria-current="page" href="{{ route('home') }}">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('wine') ? 'active' : '' }}" aria-current="page" href="{{ route('wine') }}">Vins</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('grape') ? 'active' : '' }}" aria-current="page" href="{{ route('grape') }}">Cépages</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('contact') ? 'active' : '' }}" aria-current="page" href="{{ route('contact') }}">Contact</a>
                      </li>
                      <!-- Conditional Administration Menu & Sub Menu!-->
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('auth.login') ? 'active' : '' }}" aria-current="page" href="{{ route('auth.login') }}">Contact</a>
                      </li>

                    </ul>
                    <!--
                    <form class="d-flex">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    !-->
                  </div>
                </div>
            </nav>
        </header>
        <!-- #PACE BAR !-->

        <!-- BEGIN NAVBAR REGION !-->
        <!-- END NAVBAR REGION !-->

        <!-- BEGIN CONTENT REGION !-->
        <div class="flex-shrink-0">
            <div class="container">
                @yield('content')
            </div>
        <div>
        <!-- END CONTENT REGION !-->
        <footer class="footer mt-auto py-3 bg-light">
            <div class="container">
                <span class="text-muted">Laravel v{{ Illuminate\Foundation\Application::VERSION }} (PHP v{{ PHP_VERSION }})</span>
            </div>
            @yield('footer')
        </footer>
    </body>
</html>
