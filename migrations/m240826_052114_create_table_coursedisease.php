<?php

use yii\db\Migration;

/**
 * Class m240826_052114_create_table_coursedisease
 */
class m240826_052114_create_table_coursedisease extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;

        $this->createTable('coursedisease', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull(),
        ], $tableOptions);

        $this->alterColumn('coursedisease', 'id', $this->smallInteger(8).'NOT NULL AUTO_INCREMENT');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('coursedisease');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_052114_create_table_coursedisease cannot be reverted.\n";

        return false;
    }
    */
}
