
<script src="{{ url('quickadmin/js') }}/jquery-1.11.3.min.js"></script>
<script src="{{ url('quickadmin/js') }}/jquery.dataTables.min.js"></script>
<script src="{{ url('quickadmin/js') }}/dataTables.select.min.js"></script>
<script src="{{ url('quickadmin/js') }}/jquery-ui.min.js"></script>

<script src="{{ url('quickadmin/js') }}/bootstrap.min.js"></script>
<script src="{{ url('quickadmin/js') }}/main.js"></script>

<script>
    window._token = '{{ csrf_token() }}';
</script>

@yield('javascript')