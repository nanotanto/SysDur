@extends('layouts.A4')


@section('content')

    <section class="sheet">

      <header>
          <!-- <img style="width: 100%;" src="{{ asset('img/header.png') }}"> -->
          Header
      </header>
      <footer>        
        Dokumen ini hanya digunakan untuk kepentingan PT.
      </footer>

      {!! $document->prosedur !!}
    <!-- </section> -->

@endsection