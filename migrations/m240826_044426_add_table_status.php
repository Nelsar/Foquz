<?php

use yii\db\Migration;
use yii\db\mysql\Schema;

/**
 * Class m240826_044426_add_table_status
 */
class m240826_044426_add_table_status extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;

        $this->createTable('status', [
            'id' => $this->primaryKey()->notNull(),
            'name' => $this->string()->notNull(),
        ], $tableOptions);

        $this->alterColumn('status', 'id', $this->smallInteger(8).'NOT NULL AUTO_INCREMENT');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('status');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_044426_add_table_status cannot be reverted.\n";

        return false;
    }
    */
}
