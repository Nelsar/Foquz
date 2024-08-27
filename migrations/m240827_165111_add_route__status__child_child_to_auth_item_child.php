<?php

use yii\db\Migration;

/**
 * Class m240827_165111_add_route__status__child_child_to_auth_item_child
 */
class m240827_165111_add_route__status__child_child_to_auth_item_child extends Migration
{
    public function safeUp()
    {
        $this->insert('auth_item', [
            'name' => '/status/*',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('auth_item', [
            'name' => '/status/*',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240827_165111_add_route__status__child_child_to_auth_item_child cannot be reverted.\n";

        return false;
    }
    */
}
