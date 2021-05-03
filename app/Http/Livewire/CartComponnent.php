<?php

namespace App\Http\Livewire;

use Livewire\Component;

class CartComponnent extends Component
{
    public function render()
    {
        return view('livewire.cart-componnent')->layout("layouts.base");
    }
}
