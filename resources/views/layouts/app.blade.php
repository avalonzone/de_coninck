<!DOCTYPE html>
<html lang="{{ str_replace('_','-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description=" content="IFOPLUS - Dynamic Project" />
        <meta name="author" content="Philip Tomson" />
        <link rel="icon" href="{{ route('home') }}/images/cropped-LOGO_BG_BLACK_BIG-e1608048104767-32x32.png" sizes="32x32">
        <link rel="icon" href="{{ route('home') }}/images/cropped-LOGO_BG_BLACK_BIG-e1608048104767-192x192.png" sizes="192x192">
        <link rel="apple-touch-icon" href="{{ route('home') }}/images/cropped-LOGO_BG_BLACK_BIG-e1608048104767-180x180.png">
        <meta name="msapplication-TileImage" content="{{ route('home') }}/images/cropped-LOGO_BG_BLACK_BIG-e1608048104767-270x270.png">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>@yield('title')</title>

        <!-- BEGIN SCRIPT REGION !-->
        <!-- <script src="{{ asset('js/app.js') }}" defer></script> !-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous" defer>
        </script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js" defer></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js" defer></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/6.0.0/bootbox.min.js" integrity="sha512-oVbWSv2O4y1UzvExJMHaHcaib4wsBMS5tEP3/YkMP6GmkwRJAa79Jwsv+Y/w7w2Vb/98/Xhvck10LyJweB8Jsw==" crossorigin="anonymous" referrerpolicy="no-referrer" defer></script>
        <script src="{{ asset('js/custom.js') }}" defer></script>
        <!-- END SCRIPT REGION !-->

        <!-- BEGIN STYLE REGION !-->
        <link href="https://cdn.jsdelivr.net" rel="dns-prefetch" /> <!-- DNS name resolve (DNS cache) !-->
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
                        <a class="nav-link {{ request()->routeIs('wine') ? 'active' : '' }}" aria-current="page" href="{{ route('wine') }}">Nos classiques</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('contact') ? 'active' : '' }}" aria-current="page" href="{{ route('contact') }}">Contact</a>
                      </li>
                      <!-- Conditional Administration Menu & Sub Menu !-->
                      @auth
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle {{ request()->routeIs('wines.*') || request()->routeIs('messages.*') ? 'active' : '' }}" href="#" data-bs-toggle="dropdown">Administration</a>
                        <ul class="dropdown-menu">
                            <li class="nav-item">
                                <a class="dropdown-item {{ request()->routeIs('wines.*') ? 'active' : '' }}" aria-current="page" href="{{ route('wines.index') }}">Vins</a>
                            </li>
                            <li class="nav-item">
                                <a class="dropdown-item {{ request()->routeIs('messages.*') ? 'active' : '' }}" aria-current="page" href="{{ route('messages.index') }}">Messages</a>
                            </li>
                        </ul>
                      </li>
                      @endauth
                      <!-- Conditional Login & Logout !-->
                      @guest
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('login') ? 'active' : '' }}" aria-current="page" href="{{ route('login') }}">Connexion</a>
                      </li>
                      @else
                      <li class="nav-item">
                        <a class="nav-link {{ request()->routeIs('logout') ? 'active' : '' }}" aria-current="page" href="{{ route('logout') }}">Déconnexion</a>
                      </li>
                      @endguest
                    </ul>
                  </div>
                </div>
            </nav>
        </header>
        <!-- #PACE BAR !-->

        <!-- BEGIN NAVBAR REGION !-->
        <!-- END NAVBAR REGION !-->

        <!-- BEGIN CONTENT REGION !-->
        <div class="flex-shrink-0">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="container">
                @yield('content')
            </div>
        </div>
        <!-- END CONTENT REGION !-->
        <!--
        <footer class="footer  py-3 bg-light">
            <div class="row col-12 ">
                <span class="text-muted">Laravel v{{ Illuminate\Foundation\Application::VERSION }} (PHP v{{ PHP_VERSION }})</span>
            </div>
        </footer>
        !-->
    </body>
</html>
