<?php

use yii\db\Migration;

/**
 * Class m240827_154943_add_route__status__child_to_auth_item_child
 */
class m240827_154943_add_route__status__child_to_auth_item_child extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/index'
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/index'
        ]);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240827_154943_add_route__status__child_to_auth_item_child cannot be reverted.\n";

        return false;
    }
    */
}
