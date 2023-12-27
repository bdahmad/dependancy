<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\District;

class AjaxController extends Controller{
    public function district($id){
        $allDistrict = District::where('district_status',1)->where('division_id',$id)->get();
        return view('',compact('allDistrict'));
    }
}
