<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Form Example</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</head>

<body>

    <div class="container mt-4">
        <h1 class="text-success text-center">Dependency with Ajax</h1>
        <form action="{{route('upazila.insert')}}" method="post">
            @csrf
            <div class="form-group">
                @php
                $allDiv = App\Models\Division::where('division_status',1)->get();
                @endphp
                <label for="exampleInputEmail1">Division Name</label>
                <select class="form-control" name="division_id" data-url="{{url('/')}}" id="division">
                    <option>select division</option>
                    @foreach($allDiv as $div)
                    <option value="{{$div->division_id}}">{{$div->division_name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                @php
                $allDis = App\Models\District::where('district_status',1)->get();
                @endphp
                <label for="exampleInputEmail1">District Name</label>
                <select class="form-control" name="district_id" id="district">
                    <option>select district</option>
                    @foreach($allDis as $dis)
                    <option value="{{$dis->district_id}}">{{$dis->district_name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                @php
                $allDis = App\Models\District::where('district_status',1)->get();
                @endphp
                <label for="exampleInputEmail1">Upazila Name</label>
                <input type="text" class="form-control" name="upazila_name" placeholder="Enter upazila name">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies (jQuery, Popper.js) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // alert('hello');
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {


            function getDistrict() {
                var id = $("#division").val();
                var url = $("#division").data('url');
                var newurl = url + "ajax/district/" + id;
                console.log(newurl);

                $.ajax({
                    type: "GET",
                    url: newurl,
                    cache: false,
                    dataType: "html",
                    success: function(data) {
                        $("$district").html(data);
                    }
                });
            }
            $(document).on("change", "#division", function(e) {
                e.preventDefault();
                var id = $(this).val();
                var url = $(this).data('url');
                var newurl = url + "ajax/district/" + id;

                $.ajax({
                    type: "GET",
                    url: newurl,
                    cache: false,
                    dataType: "html",
                    success: function(data) {
                        // return getDistrict();
                        console.log(data);
                    }
                });
            });
        });
    </script>
</body>

</html>