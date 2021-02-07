@extends('layouts.A4')


@section('content')

    <section class="sheet">

@include('layouts.header')
<!-- <header></header> -->
    
<br/>
      <p style="text-align: center;"><strong>HALAMAN PEMERIKSAAN DAN PERSETUJUAN</strong></p>
<table style="border-collapse: collapse; width: 99.8532%; height: 180px;" border="1">
<tbody>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;" colspan="4"><strong>Disiapkan oleh:</strong></td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; text-align: center; height: 18px;"><strong>Nama</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Jabatan</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Tanda Tangan</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Tanggal</strong></td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="border-collapse: collapse; width: 100.147%; height: 181px;" border="1">
<tbody>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;" colspan="4"><strong>Diperiksa oleh:</strong></td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; text-align: center; height: 18px;"><strong>Nama</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Jabatan</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Tanda Tangan</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Tanggal</strong></td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="border-collapse: collapse; width: 100%; height: 182px;" border="1">
<tbody>
<tr style="height: 18px;">
<td style="width: 100%; height: 18px;" colspan="4"><strong>Disetujui oleh:</strong></td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; text-align: center; height: 18px;"><strong>Nama</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Jabatan</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Tanda Tangan</strong></td>
<td style="width: 25%; text-align: center; height: 18px;"><strong>Tanggal</strong></td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
</tr>
<tr style="height: 18px;">
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
<td style="width: 25%; height: 18px;">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>

    </section>

    <section class="sheet">
      @include('layouts.header')
          <p style="text-align: center;"><strong>RIWAYAT REVISI</strong></p>
<table style="border-collapse: collapse; width: 100%; height: 467px;" border="1">
<tbody>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px; text-align: center;"><strong>BAGIAN</strong></td>
<td style="width: 35.1471%; height: 15px; text-align: center;"><strong>ISI</strong> <strong>PERUBAHAN</strong></td>
<td style="width: 14.8529%; height: 15px; text-align: center;"><strong>REVISI KE</strong></td>
<td style="width: 25%; height: 15px; text-align: center;"><strong>TGL REVISI</strong></td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;{{$document->department_id}}</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;{{$document->revisi}}</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;{{$document->no_rev}}</td>
<td style="width: 25%; height: 15px;">&nbsp;{{$document->updated_at}}</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
<tr style="height: 15px;">
<td style="width: 25%; height: 15px;">&nbsp;</td>
<td style="width: 35.1471%; height: 15px;">&nbsp;</td>
<td style="width: 14.8529%; height: 15px;">&nbsp;</td>
<td style="width: 25%; height: 15px;">&nbsp;</td>
</tr>
</tbody>
</table>
    </section>

    <section class="sheet">
      @include('layouts.header')
      <!-- {!! $document->prosedur !!} -->

      <?=str_replace(['$document->no_rev','$document->no','$document->name','$document->date'], [$document->no_rev,$document->no,$document->name,$document->data], $document->prosedur)?>

    </section>

@endsection