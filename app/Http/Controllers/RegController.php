<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use auth;
use DB;
use App\RegModel;
class RegController extends Controller
{
	
	public function formreg(){
         $getData = DB::table('tbl_reg')->orderby('id','DESC')->paginate(1);

     return view('front-end.formreg',compact('getData'));
    }

    public function insert(Request $request){

        $reg= new RegModel;
        $reg->name     = $request->name;
       
        $reg->email   	     = $request->email;
        $reg->phone_number      = $request->phone_number;
        $reg->sex      = $request->sex;
        $reg->date      = $request->date;
        $reg->address      = $request->address;
        $reg->motor      = $request->motor;
        
        $reg->save();
       
        // return $employee->id;
        return back()->with('success','Data insert successfuly');
        //return successfuly ;
    }
    
   
}

