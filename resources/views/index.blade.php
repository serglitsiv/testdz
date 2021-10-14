@extends('layouts.master')
@section('title' , 'List products')
@section('content')
    <a class="btn btn-warning mt-3"  role="button" href="{{ route('products.create') }}">Create product</a>
    <div class="card mt-3" style="width: 18rem;">
        @foreach($products as $product)
        <div class="card-body">
            <h5 class="card-title">{{$product->name}}</h5>
            <p class="card-text">{{$product->price}} $</p>
            <a href="{{ route('products.show' , $product) }}" class="btn btn-primary">See more</a>
        </div>
            <a class="btn btn-secondary" role="button" href="{{ route('products.edit' , $product ) }}">Edit product</a>
        @endforeach
    </div>
    {{ $products->links() }}
@endsection
