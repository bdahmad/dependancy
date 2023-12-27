<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Division;
use App\Models\District;
use Carbon\Carbon;

class DivisionController extends Controller
{

    public function insert(Request $request)
    {
        $insert = Division::insert([
            'division_name' => $request->division_name,
            'created_at' => Carbon::now()->toDateTimeString(),
        ]);
        if ($insert) {
            return redirect()->back();
        }
    }
    public function insertDistrict(Request $request)
    {
        $insert = District::insert([
            'district_name' => $request->district_name,
            'division_id' => $request->division_id,
            'created_at' => Carbon::now()->toDateTimeString(),
        ]);
        if ($insert) {
            return redirect()->back();
        }
    }
    public function insertUpazila(Request $request)
    {
        // $insert = District::insert([
        //     'district_name' => $request->district_name,
        //     'division_id' => $request->division_id,
        //     'created_at' => Carbon::now()->toDateTimeString(),
        // ]);
        // if ($insert) {
        //     return redirect()->back();
        // }
    }
}
