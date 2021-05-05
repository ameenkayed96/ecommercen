<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;

class ShopComponnent extends Component
{
    public function render()
    {
        $products = Product::paginate(12);
        return view('livewire.shop-componnent',['products' => $products])->layout("layouts.base");
    }
}
