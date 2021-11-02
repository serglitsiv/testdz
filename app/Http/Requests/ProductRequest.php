<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:3|max:255',
            'code' => 'required|min:1|max:10000',
            'price' => 'required|min:1|max:100000',
            'description' => 'required|min:3|max:1000',
            'height' => 'required|min:2|max:1000',
            'width' => 'required|min:2|max:100',
        ];
    }
}
