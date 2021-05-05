<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\Product;
use Livewire\Component;
use DB;

class DetailsComponnent extends Component
{
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
    }
    public function render()
    {
        $product = Product::where('slug',$this->slug)->first();
        $products = Product::where('category_id' , $product->category_id)->get();
        $popular_products = Product::inRandomOrder()->limit(4)->get();
        return view('livewire.details-componnent',['product' => $product,'products' => $products,'popular_products'=>$popular_products])->layout("layouts.base");
    }
}
