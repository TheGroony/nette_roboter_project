<?php


namespace App\Controls;


interface FooterControlFactory
{
    public function create(): FooterControl;
}