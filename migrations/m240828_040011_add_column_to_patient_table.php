<?php

use yii\db\Migration;

/**
 * Handles adding columns to table `{{%patient}}`.
 */
class m240828_040011_add_column_to_patient_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('patient', 'updated_at', $this->integer());
        $this->addColumn('patient', 'created_at', $this->integer());
        $this->addColumn('patient', 'diagnosis', $this->text());
        $this->addColumn('patient', 'discharged', $this->string());
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('patient', 'updated_at');
        $this->dropColumn('patient', 'created_at');
        $this->dropColumn('patient', 'diagnosis');
        $this->dropColumn('patient', 'discharged');
    }
}
