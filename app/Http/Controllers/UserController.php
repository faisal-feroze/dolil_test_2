<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class UserController extends Controller
{

    public function __construct(){
          $this->middleware('role:user');
    }

    public function index(){
        return view('user.index');
    }

    public function user_profile(){
      $user_id =  Auth::user()->id;
      $user = User::find($user_id);
      return view('user.profile',['user'=>$user]);
    }

    public function user_update(Request $request, $id){
      $inputs = $request->all();
      $user = User::find($id);

      if($image = $request->file('image')){
        $name = $image->getClientOriginalName();
        if($image->move('images', $name)){
          $inputs['image'] = $name;
          $user->update($inputs);
          session()->flash('message','User Profile is Updated');
          return redirect()->route('user_profile',['user'=>$user]);
        }
      }
      else{
        $user->update($inputs);
        session()->flash('message','User Profile is Updated');
        return redirect()->route('user_profile',['user'=>$user]);
      }
    }

    public function custom_form(){
        return view('custom_form');
    }


    public function form_save(Request $request){
        $inputs = $request->all();
        $user = Auth::user()->id;
        dd($inputs);
        //echo $user;
  /***DB SAVE**/
        //$to_save_db_array = json_encode($inputs);
  /***DB SAVE**/
        #dd($to_save_array);

  //****Fetch ***/
        //$unserialize_array = json_decode($to_save_db_array,TRUE);
  //Edit
        //$unserialize_array['t3f27'] = 'ali.haider@trenzasoft.com';

        //$to_save_db_array = json_encode($unserialize_array);

        //print_r($unserialize_array['test']);



  //****Fetch ***/



    }


}
