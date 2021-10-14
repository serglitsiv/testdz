<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class CardController extends Controller
{
    public function show( Product $id)
    {
       $products = Product::findOrFail($id);
       return view('layouts.card', compact('products'));
//dd($products);
    }
}
