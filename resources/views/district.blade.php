    <!-- <option>select district</option> -->
    @foreach($allDistrict as $dis)
    <option value="{{$dis->district_id}}">{{$dis->district_name}}</option>
    @endforeach