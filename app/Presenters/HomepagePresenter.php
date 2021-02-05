<?php

declare(strict_types=1);

namespace App\Presenters;

use App\Controls\MenuControlFactory;
use Nette;
use Nette\Application\UI\Presenter;
use App\Model\DatabaseManager;
use Nette\Application\UI\Form;
use Nette\Mail\Message;
use Nette\mail\smtpMailer;
use App\Presenters\BasePresenter;


class HomepagePresenter extends BasePresenter
{
    private $databaseManager;



    public function __construct(DatabaseManager $databaseManager) {
        $this->databaseManager = $databaseManager;
    }

    public function renderDefault() {
        // Vrátí proměnné pro menu
        $this->template->menu = $this->databaseManager
        ->getMenu();

        // Vrátí proměnné obsahující adresy obrázků
        $this->template->images = $this->databaseManager
        ->getImages();

        // Vrátí proměnné pro sekci main-header
        $this->template->header = $this->databaseManager
        ->getMainHeader();

        // Vrátí proměnné pro sekci o robotovi
        $this->template->robotInfo = $this->databaseManager
        ->getRobotInfo();

        // Vrátí proměnné pro sekci vlastnosti
        $this->template->vlastnosti = $this->databaseManager
        ->getVlastnosti();

        // Vrátí proměnné pro sekci očekávání
        $this->template->ocekavani = $this->databaseManager
        ->getOcekavani();

        // Vrátí proměnné pro sekci představení
        $this->template->predstaveni = $this->databaseManager
        ->getPredstaveni();

        // Vrátí proměnné pro sekci kontakt
        $this->template->kontakt = $this->databaseManager
        ->getKontakt();

        // Vrátí proměnné pro footer
        $this->template->footer = $this->databaseManager
        ->getFooter();

    }

    protected function createComponentContactForm(): Form {
        $form = new Form;

        $form->addText("name", "Jméno")
        ->setRequired("Zadejte prosím jméno.")
        ->setHtmlAttribute("placeholder", "Např. Jan Novák");

        $form->addEmail("email", "E-mail")
        ->setRequired("Zadejte prosím e-mail.")
        ->addRule($form::EMAIL)
        ->setHtmlAttribute("placeholder", "jan.novak@email.cz");

        $form->addText("tel", "Telefon")
        ->setHtmlAttribute("placeholder", "123 456 789");

        $form->addText("textArea", "Vaše Zpráva")
        ->setRequired("Zadejte prosím Vaší zprávu.")
        ->setHtmlAttribute("placeholder", "Dobrý den, mám zájem o...");

        $form->addSubmit("send", "Odeslat");

        $form->onSuccess[] = [$this, "contactFormSucceeded"];

        return $form;
    }

    public function contactFormSucceeded(\stdClass $values): void {

       $mail = new Message;

        $text = $values->textArea . " Přiložené telefonní číslo: " . $values->tel;

        $mail->setFrom($values->email, $values->name)
        ->addTo("mail.dgstudio.cz")
        ->setBody($text);

        $mailer = new SmtpMailer([
            "host" => "mail.dgstudio.cz",
            "username" => "projekt@dgstudio.cz",
            "password" => "sYUd9743St",
            "secure" => "ssl"
        ]);
        $mailer->send($mail);
    }
}
