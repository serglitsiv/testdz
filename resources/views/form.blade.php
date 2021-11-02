@extends('layouts.master')
@section('title', isset($product)  ? 'Update'. $product->name : 'Create products')
@section('content')
    <a type="button" class="btn btn-secondary" href="{{ route('products.index') }}">Back to products</a>
    <form method="POST"
          @if(isset($product))
          action="{{ route('products.update', $product) }}"
          @else
          action="{{ route('products.store') }}"
          @endif
          class="mt-3">
        @csrf
        @isset($product)
            @method('PUT')
        @endisset
        <div class="row">
            <div class="col">
                <input name="name"
                       value="{{ old('name' , isset($product) ? $product->name : null  ) }}"
                       type="text" class="form-control" placeholder="Name" aria-label="Name">
                @error('name')
                 <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="col">
                <input  name="code"
                        value="{{ old('code' , isset($product) ? $product->code : null  ) }}"
                        type="text" class="form-control" placeholder="Code" aria-label="Code">
                @error('code')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="col">
                <input  name="price"
                        value="{{ old('price' , isset($product) ? $product->price : null  ) }}"
                        type="text" class="form-control" placeholder="Price" aria-label="Price">
                @error('price')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="col">
                <input  name="description"
                        value="{{ old('description' , isset($product) ? $product->description : null  ) }}"
                        type="text" class="form-control" placeholder="Description" aria-label="Description">
                @error('description')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="col">
                <input  name="height"
                        value="{{ old('height' , isset($product) ? $product->height : null  ) }}"
                        type="text" class="form-control" placeholder="Height" aria-label="Height">
                @error('height')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="col">
                <input  name="width"
                        value="{{ old('width' , isset($product) ? $product->width : null  ) }}"
                        type="text" class="form-control" placeholder="Width" aria-label="Width">
                @error('width')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="row mt-4">
            <div class="col">
                <button type="submit" class="btn btn-success">Create</button>
            </div>
        </div>
    </form>

@endsection
