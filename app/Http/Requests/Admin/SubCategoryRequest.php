<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class SubCategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        if (request()->routeIs('sub-category.update')) {
            return [
                'name' => 'required|string|min:3',
                'category_id' => ['required', 'exists:categories,id'],
                'photo' => 'image'
            ];
        }
        return [
            'name' => 'required|string|min:3',
            'category_id' => ['required', 'exists:categories,id'],
            'photo' => 'required|image'
        ];
    }
}
