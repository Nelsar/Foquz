<?php

use yii\db\Migration;

/**
 * Class m240826_051717_create_table_treatmentform
 */
class m240826_051717_create_table_treatmentform extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;

        $this->createTable('treatmentform', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull(),
        ], $tableOptions);

        $this->alterColumn('treatmentform', 'id', $this->smallInteger(8).'NOT NULL AUTO_INCREMENT');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('treatmentform');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_051717_create_table_treatmentform cannot be reverted.\n";

        return false;
    }
    */
}
