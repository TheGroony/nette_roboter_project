<?php


namespace App\Presenters;

use App\Controls\FooterControl;
use App\Controls\FooterControlFactory;
use App\Controls\MenuControl;
use App\Controls\MenuControlFactory;


abstract class BasePresenter extends \Nette\Application\UI\Presenter
{

    /**
     * @var MenuControlFactory
     * @inject
     */
    public $menuControlFactory;

    /**
     * @var FooterControlFactory
     * @inject
     */
    public $footerControlFactory;

    public function createComponentMenu(): MenuControl {
        return $this->menuControlFactory->create();
    }

    public function createComponentFooter(): FooterControl {
        return $this->footerControlFactory->create();
    }
}