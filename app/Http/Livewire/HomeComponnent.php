<?php

namespace App\Http\Livewire;

use Livewire\Component;

class HomeComponnent extends Component
{
    public function render()
    {
        return view('livewire.home-componnent')->layout('layouts.base');
    }
}
