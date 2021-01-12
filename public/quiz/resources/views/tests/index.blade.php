@extends('layouts.app')

@section('content')
    <h3 class="page-title">Quiz</h3>

    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('quickadmin.list')
        </div>

        <div class="panel-body">
            <table class="table table-bordered table-striped {{ count($topics) > 0 ? 'datatable' : '' }} ">
                <thead>
                    <tr>
                        {{-- <th style="text-align:center;"><input type="checkbox" id="select-all" /></th> --}}
                        <th>@lang('quickadmin.topics.fields.title')</th>
                        <th>&nbsp;</th>
                    </tr>
                </thead>
                
                <tbody>
                    @if (count($topics) > 0)
                        @foreach ($topics as $topic)
                            <tr data-entry-id="{{ $topic->id }}">
                                {{-- <td></td> --}}
                                <td>{{ $topic->title }}</td>
                                <td>
                                    <a href="{{ route('tests.show',[$topic->id]) }}" class="btn btn-xs btn-primary">@lang('quickadmin.view')</a>                                   
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td colspan="3">@lang('quickadmin.no_entries_in_table')</td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@stop
