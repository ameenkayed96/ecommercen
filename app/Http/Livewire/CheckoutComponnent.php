<?php

namespace App\Http\Livewire;

use Livewire\Component;

class CheckoutComponnent extends Component
{
    public function render()
    {
        return view('livewire.checkout-componnent')->layout("layouts.base");
    }
}
