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
                       value="{{ isset($product) ? $product->name : null  }}"
                       type="text" class="form-control" placeholder="Name" aria-label="Name">
            </div>
            <div class="col">
                <input  name="code"
                        value="{{ isset($product) ? $product->code : null  }}"
                        type="text" class="form-control" placeholder="Code" aria-label="Code">
            </div>
            <div class="col">
                <input  name="price"
                        value="{{ isset($product) ? $product->price : null  }}"
                        type="text" class="form-control" placeholder="Price" aria-label="Price">
            </div>
            <div class="col">
                <input  name="description"
                        value="{{ isset($product) ? $product->description : null  }}"
                        type="text" class="form-control" placeholder="Description" aria-label="Description">
            </div>
            <div class="col">
                <input  name="height"
                        value="{{ isset($product) ? $product->height : null  }}"
                        type="text" class="form-control" placeholder="Height" aria-label="Height">
            </div>
            <div class="col">
                <input  name="width"
                        value="{{ isset($product) ? $product->width : null  }}"
                        type="text" class="form-control" placeholder="Width" aria-label="Width">
            </div>
        </div>
        <div class="row mt-4">
            <div class="col">
                <button type="submit" class="btn btn-success">Create</button>
            </div>
        </div>
    </form>

@endsection
