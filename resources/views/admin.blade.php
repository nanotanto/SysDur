@extends('layouts.app')

@section('content')

<script src="{{ asset('public/adminSysDur/codebase/myapp.js') }}" defer></script>

<tinystyle style="display:none">
/* THIS WOULD GO TO CONTENT_CSS - BUT I CANT DO THIS ON FIDDLE */
HTML{
    background: #686c6f;
    box-shadow: inset 1px 0 2px #00000091;
}
BODY#tinymce{
    width: 21cm; /* this should be 21 cm as the page size, but I have little space here in fiddle */
    min-height: 24cm; /* this should be 29.7 cm (A4 page) */
    background: #fff;
    display: block;
    box-shadow: 0 2px 7px rgba(0,0,0,0.7);
    margin: 5px auto 20px auto;
    padding: 0.1cm 1.5cm;
    box-sizing: border-box;
}
BODY#tinymce img.mce-pagebreak{
    cursor: default;
    cursor: grab;
    display: block;
    width: 100%;
    width: calc(100% + 2.2cm);
    margin-left: -1.1cm;
    margin-right: -1.1cm;
    height: 14px;
    margin-top: 20px;
    margin-bottom: 20px;
    page-break-before: always;
    border: 0;
    box-shadow: inset 0 5px 8px -6px rgba(0,0,0,1);
    border-bottom: 1px solid #555;
    background: linear-gradient(to right, #686C6F, #7F8284);
}
BODY#tinymce img.mce-pagebreak:hover{
    opacity: .9;
}
</tinystyle>

@endsection
