<?php

use yii\db\Migration;

/**
 * Class m240826_071641_add_data_to_status
 */
class m240826_071641_add_data_to_status extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('status', [
            'name' => 'Наблюдается',
        ]);

        $this->insert('status', [
            'name' => 'Не наблюдается',
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('status',[ 'name' => 'Наблюдается']);
        $this->delete('status',[ 'name' => 'Не наблюдается']);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_071641_add_data_to_status cannot be reverted.\n";

        return false;
    }
    */
}
