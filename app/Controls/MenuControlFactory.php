<?php


namespace App\Controls;


interface MenuControlFactory
{

    public function create(): MenuControl;

}