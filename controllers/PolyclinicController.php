<?php

namespace app\controllers;

use \yii\rest\ActiveController;
use app\models\Polyclinic;

class PolyclinicController extends ActiveController
{
    public $modelClass = Polyclinic::class;

    public function actionIndex()
    {
        return $this->render('index');
    } 
}