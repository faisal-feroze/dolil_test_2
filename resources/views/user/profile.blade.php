<x-dashboard-user>

    @section('content')

        <div class="d_container">
          <h1>Profile</h1>
          @if(session('message'))
              <div class="alert alert-success">{{session('message')}}</div>
          @endif
          <form action="{{ route('user_update',$user->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PATCH')
            <div class="form_parent">
              <div class="form_image_block">

                <div class="form-group row">
                    <div class="propic col-sm-12">
                      <img class="img-profile rounded-circle" src="{{ asset('images/' . $user->image) }}" />
                    </div>

                    <div class="col-sm-12">
                      <label for="text" class="col-sm-12 col-form-label">Change Profile Picture</label>
                      <input type="file" name="image" class="form-control">
                    </div>
                </div>

              </div>

              <div class="form_other_block">
                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-10">
                      <input type="text" name="name" class="form-control" id="" value="{{$user->name}}">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Mobile</label>
                    <div class="col-sm-10">
                      <input type="text" name="phone" class="form-control" id="" value="{{$user->phone}}">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">E-mail</label>
                    <div class="col-sm-10">
                      <input type="email" name="email" class="form-control" id="" value="{{$user->email}}">
                    </div>
                </div>

                <!-- <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">NID</label>
                    <div class="col-sm-10">
                      <input type="text" name="nid" class="form-control" id="" value="{{$user->nid}}">
                    </div>
                </div> -->

                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Present Addess</label>
                    <div class="col-sm-10">
                        <textarea name="present_address" class="form-control" id="" cols="12" rows="5">{{$user->present_address}}</textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Permanent Addess</label>
                    <div class="col-sm-10">
                        <textarea name="permanent_address" class="form-control" id="" cols="12" rows="5">{{$user->permanent_address}}</textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Age</label>
                    <div class="col-sm-10">
                      <input type="number" name="age" min="16" max="90" class="form-control" id="" value="{{$user->age}}">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="text" class="col-sm-2 col-form-label">Religion</label>
                    <div class="col-sm-10">
                      <input type="text" name="religion" class="form-control" id="" value="{{$user->religion}}">
                    </div>
                </div>



                <div class="form-group row">
                    <div class="col-sm-12 text-right">
                      <button type="submit" class="btn btn-primary">Update Profile</button>
                    </div>
                </div>

              </div>

            </div>

        </form>


        </div>
    @endsection




</x-dashboard-user>
