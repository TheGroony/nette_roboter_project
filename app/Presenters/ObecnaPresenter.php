<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;
use Nette\Application\UI\Presenter;
use App\Model\DatabaseManager;
use App\Presenters\HomepagePresenter;

class ObecnaPresenter extends HomepagePresenter {


    /**
     * @var DatabaseManager
     * @inject
     */

    public $databaseManager;
    public $homepagePresenter;

    public function renderObecna() {
        $this->template->obecna = $this->databaseManager
            ->getObecna();

        $this->template->menu = $this->databaseManager
            ->getMenu();

        $this->template->images = $this->databaseManager
            ->getImages();

        $this->template->footer = $this->databaseManager
            ->getFooter();

        $this->createComponentMenu();
    }

}