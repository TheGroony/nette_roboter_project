<?php


namespace App\Controls;

use App\Model\DatabaseManager;
use Nette\Application\UI\Control;


class FooterControl extends Control
{
    private $databaseManager;

    public function __construct(DatabaseManager $databaseManager) {
        $this->databaseManager = $databaseManager;
    }

    public function render() :void {
        $this->template->footer = $this->databaseManager
            ->getFooter();
        $this->template->images = $this->databaseManager
            ->getImages();
        $this->template->render(__DIR__ . "./FooterControl.latte");
    }
}