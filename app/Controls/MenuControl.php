<?php
namespace App\Controls;

use App\Model\DatabaseManager;
use Nette\Application\Attributes\Persistent;
use Nette\Application\UI\Control;


class MenuControl extends Control {

    private $databaseManager;

    public function __construct(DatabaseManager $databaseManager) {
        $this->databaseManager = $databaseManager;
    }

    public function render(): void {
        $this->template->menu = $this->databaseManager
            ->getMenu();
        $this->template->images = $this->databaseManager
            ->getImages();
        $this->template->render(__DIR__ . '/MenuControl.latte');
    }

}