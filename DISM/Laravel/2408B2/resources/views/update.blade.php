@extends('layouts.app')

@section('content')

    <form method="post" action="{{route('update', ['idy'=>$identity->id])}}" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Product Name</label>
          <input type="text" name="pn" value="{{$identity->pname}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
       
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Product Price</label>
            <input type="number" name="pp" value="{{$identity->pprice}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>

          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Product Image</label>
            <input type="file" name="pi" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
        
        <button type="submit" class="btn btn-primary">Update</button>
      </form>
</body>
</html>
@endsection