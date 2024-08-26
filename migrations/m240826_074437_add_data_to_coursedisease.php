<?php

use yii\db\Migration;

/**
 * Class m240826_074437_add_data_to_coursedisease
 */
class m240826_074437_add_data_to_coursedisease extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('coursedisease', ['name' => 'Абсцесс Броди']);
        $this->insert('coursedisease', ['name' => 'Абсцесс мягких тканей']);
        $this->insert('coursedisease', ['name' => 'Абсцесс печени']);
        $this->insert('coursedisease', ['name' => 'Авитаминоз']);
        $this->insert('coursedisease', ['name' => 'Агалактия']);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('coursedisease', ['name' => 'Абсцесс Броди']);
        $this->delete('coursedisease', ['name' => 'Абсцесс мягких тканей']);
        $this->delete('coursedisease', ['name' => 'Абсцесс печени']);
        $this->delete('coursedisease', ['name' => 'Авитаминоз']);
        $this->delete('coursedisease', ['name' => 'Агалактия']);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_074437_add_data_to_coursedisease cannot be reverted.\n";

        return false;
    }
    */
}
