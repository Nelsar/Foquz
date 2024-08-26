<?php

use yii\db\Migration;

/**
 * Class m240826_075524_add_data_to_treatmentform
 */
class m240826_075524_add_data_to_treatmentform extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('treatmentform', [
            'name' => 'Амбулаторное медицинское обслуживание'
        ]);

        $this->insert('treatmentform', [
            'name' => 'Стационарное медицинское обслуживание'
        ]);

        $this->insert('treatmentform', [
            'name' => 'Служба скорой медицинской помощи и дежурная медицинская служба'
        ]);

        $this->insert('treatmentform', [
            'name' => 'Диспансерное медицинское обслуживание'
        ]);

        $this->insert('treatmentform', [
            'name' => 'Профилактическое медицинское обслуживание'
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('treatmentform', [
            'name' => 'Амбулаторное медицинское обслуживание'
        ]);

        $this->delete('treatmentform', [
            'name' => 'Стационарное медицинское обслуживание'
        ]);

        $this->delete('treatmentform', [
            'name' => 'Служба скорой медицинской помощи и дежурная медицинская служба'
        ]);

        $this->delete('treatmentform', [
            'name' => 'Диспансерное медицинское обслуживание'
        ]);

        $this->delete('treatmentform', [
            'name' => 'Профилактическое медицинское обслуживание'
        ]);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_075524_add_data_to_treatmentform cannot be reverted.\n";

        return false;
    }
    */
}
