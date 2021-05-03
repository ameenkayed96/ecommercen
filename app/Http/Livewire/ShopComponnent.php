<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ShopComponnent extends Component
{
    public function render()
    {
        return view('livewire.shop-componnent')->layout("layouts.base");
    }
}
