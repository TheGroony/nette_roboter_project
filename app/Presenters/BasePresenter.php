<?php


namespace App\Presenters;

use App\Controls\MenuControl;
use App\Controls\MenuControlFactory;


abstract class BasePresenter extends \Nette\Application\UI\Presenter
{

    /**
     * @var MenuControlFactory
     * @inject
     */
    public $menuControlFactory;

    public function createComponentMenu():MenuControl {
        return $this->menuControlFactory->create();
    }
}