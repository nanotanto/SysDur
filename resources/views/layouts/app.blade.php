<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', '') }}</title>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- Webix -->
    <script type="text/javascript" src="{{ asset('webix/webix.min.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{ asset('webix/skins/compact.min.css') }}">
    <!-- Component TinyMCE Text Editor -->
    <script type="text/javascript" src="{{ asset('webix/components/tinymce/tinymce.js') }}"></script>
    <!-- <script type="text/javascript" src="{{ asset('tinymce/tinymce.min.js') }}"></script> -->

    <link rel="stylesheet" href="{{asset('MaterialDesign/css/materialdesignicons.css')}}" type="text/css" charset="utf-8">
    
    <style type="text/css">
        body {
  background: rgb(204,204,204); 
}
page {
  padding: 4cm 1.5cm 4cm 1.5cm;
  position: relative;
  background: white;
  display: block;
  margin: 0 auto;
  margin-bottom: 0.5cm;
  box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
}
page[size="A4"] {  
  width: 21cm;
  height: 29.7cm; 
}
page[size="A4"][layout="portrait"] {
  width: 29.7cm;
  height: 21cm;  
}
page[size="A3"] {
  width: 29.7cm;
  height: 42cm;
}
page[size="A3"][layout="portrait"] {
  width: 42cm;
  height: 29.7cm;  
}
page[size="A5"] {
  width: 14.8cm;
  height: 21cm;
}
page[size="A5"][layout="portrait"] {  
  padding: 0.5cm 0cm 0.5cm 0cm;
  width: 21cm;
  height: 14.8cm;  
  /*height: 14.8cm;  */
}

header,
footer {
  position: absolute;
  left: 0;
  right: 0;
  background-color: #fff;
  padding-right: 1.5cm;
  padding-left: 1.5cm;
  text-align: center;
}

header {
  top: 0;
  padding-top: 4mm;
  padding-bottom: 3mm;
}
footer {
  bottom: 0;
  color: #000;
  padding-top: 3mm;
  padding-bottom: 4mm;
}

@media print {
  body, page {    
  /* width: 21cm;
  height: 29.7cm;  */
  font-size: 12pt;
  padding-top: 2.5cm;
  padding-right: 0px;
  padding-bottom: 2.5cm;
  padding-left: 0px;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
  }
  header,
  footer {
    position: fixed;
    left: 0;
    right: 0;
    background-color: #ccc;
    /* padding-right: 1.5cm;
    padding-left: 1.5cm; */
  }

  
}
    </style>
    
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-dark navbar-laravel bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{ url('/') }}">
                    SysDur
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
    
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    
                    <ul class="navbar-nav mr-auto"></ul>


                    
                    <ul class="navbar-nav ml-auto">
                        
                        @guest
                            <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                            <li><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></li>
                        @else

                        @role('Superadmin')
                            <li><a class="nav-link" href="{{ route('users.index') }}">Manage Users</a></li>
                            <li><a class="nav-link" href="{{ route('roles.index') }}">Manage Role</a></li>
                            <li><a class="nav-link" href="{{ route('companies.index') }}">Manage Company</a></li>
                            <li><a class="nav-link" href="{{ route('departments.index') }}">Manage Department</a></li>
                            <li><a class="nav-link" href="{{ route('positions.index') }}">Manage Position</a></li>
                            <!-- <li><a class="nav-link" href="{{ route('documents.index') }}">Manage Document</a></li> -->
                        @endrole
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>


                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>


                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>


        <!-- <main class="py-4"> -->
            <div class="container">
            @yield('content')
            </div>
        <!-- </main> -->
    </div>
</body>
</html>