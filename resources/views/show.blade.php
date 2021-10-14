@extends('layouts.master')
@section('title' , 'Name products' . $product->name)
@section('content')
    <a type="button" class="btn btn-info" href="{{ route('products.index') }}">Back to products</a>
    <div class="card" style="width: 18rem;">
            <div class="card-body">
                <p class="card-title"><strong>Name:</strong>{{$product->name}}</p>
                <p class="card-text"><strong>Code:</strong>{{$product->code}} </p>
                <p class="card-text"><strong>Price:</strong>{{$product->price}} $</p>
                <p class="card-text"><strong>Description:</strong>{{$product->description}} </p>
                <p class="card-text"><strong>Height:</strong>:{{$product->height}} </p>
                <p class="card-text"><strong>Width:</strong>:{{$product->width}} </p>
            </div>
    </div>
@endsection
