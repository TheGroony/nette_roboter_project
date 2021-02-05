<?php

namespace App\Model;

use Nette;
use Nette\Database\Explorer;

class DatabaseManager {

    use Nette\SmartObject;

    private $database;

    public function __construct(Explorer $database) {
        $this->database = $database;
    }

    public function getObecna() {
        return $this->database->table("obecna");
    }

    public function getMenu() {
        return $this->database->table("menu");
    }

    public function getMainHeader() {
        return $this->database->table("header");
    }

    public function getImages() {
        return $this->database->table("obrazky");
    }

    public function getRobotInfo() {
        return $this->database->table("oRobotovi");
    }

    public function getVlastnosti() {
        return $this->database->table("vlastnosti");
    }

    public function getOcekavani() {
        return $this->database->table("ocekavani");
    }

    public function getPredstaveni() {
        return $this->database->table("predstaveni");
    }

    public function getKontakt() {
        return $this->database->table("kontakt");
    }

    public function getFooter() {
        return $this->database->table("footer");
    }
}