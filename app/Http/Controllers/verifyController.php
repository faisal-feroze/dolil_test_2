<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;


class verifyController extends Controller
{

  public function getVerify(){
      return view('verify');
  }

  public function postVerify(Request $request){
      if($user=User::where('code',$request->code)->first()){
          $user->is_active=1;
          $user->code=null;
          $user->save();
          return redirect()->route('login')->withMessage('Your account is active');
      }
      else{
          return back()->withMessage('verify code is not correct. Please try again');
      }
  }

  public function custom_form(){
      return view('custom_form');
  }

  public function save(Request $request){
      $inputs = $request->all();
      $user = Auth::user()->id;
      //dd($inputs);
      //echo $user;
/***DB SAVE**/
      $to_save_db_array = json_encode($inputs);
/***DB SAVE**/
      #dd($to_save_array);

//****Fetch ***/
      $unserialize_array = json_decode($to_save_db_array,TRUE);
//Edit
      //$unserialize_array['t3f27'] = 'ali.haider@trenzasoft.com';

      //$to_save_db_array = json_encode($unserialize_array);

      print_r($unserialize_array['test']);



//****Fetch ***/



  }


}
