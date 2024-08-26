<?php

namespace app\controllers;

use yii\rest\ActiveController;
use app\models\Treatmentform;

class TreatmentformController extends \yii\rest\ActiveController
{

    public $modelClass = Treatmentform::class;

    public function behaviors()
    {
        return [
            // 'ghost-access' => [
            //     'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl'
            // ],
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
