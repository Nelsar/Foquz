<?php

namespace app\controllers;

use app\models\Coursedisease;

class СoursediseaseController extends \yii\rest\ActiveController
{
    public $modelClass = Coursedisease::class;

    public function behaviors()
    {
        return [
            'ghost-access' => [
                'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl'
            ],
            'contentNegotiator' => [
                'class' => \yii\filters\ContentNegotiator::class,
                'formatParam' => 'format',
                'formats' => [
                    'application/json' => \yii\web\Response::FORMAT_JSON
                ],
            ]
        ];
    }

    public function actionIndex()
    {
        return $this->render('index');
    }
}