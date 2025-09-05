@extends('layouts.app')

@section('content')

<table class="table">
    <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Price</th>
        <th>Product Image</th>
        <th>Action</th>
    </tr>
   @foreach ($sel as $item)
       <tr>
        <td>{{$item->id}}</td>
        <td>{{$item->pname}}</td>
        <td>{{$item->pprice}}</td>
        <td> <img src="uploads/{{$item->pimage}}" alt="" width="100px"> </td>
        <td>
            <a href="{{route('delete', ['id'=>$item->id])}}" class="btn btn-danger">Delete</a>
            <a href="{{route('editing', ['id'=>$item->id])}}" class="btn btn-warning">Update</a>
        </td>
       </tr>
   @endforeach
</table>
@endsection