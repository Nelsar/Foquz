<?php

use yii\db\Migration;

/**
 * Class m240826_051307_create_table_polyclinic
 */
class m240826_051307_create_table_polyclinic extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;

        $this->createTable('polyclinic', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull(),
        ], $tableOptions);

        $this->alterColumn('polyclinic', 'id', $this->smallInteger(8).'NOT NULL AUTO_INCREMENT');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('polyclinic');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_051307_create_table_polyclinic cannot be reverted.\n";

        return false;
    }
    */
}
