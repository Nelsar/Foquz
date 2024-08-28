<?php

use yii\db\Migration;

/**
 * Class m240828_052536_add_route_persions
 */
class m240828_052536_add_route_persions extends Migration
{
    public function safeUp()
    {
        $this->insert('auth_item', [
            'name' => '/status/create',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/create'
        ]);

        $this->insert('auth_item', [
            'name' => '/status/delete',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/delete'
        ]);

        $this->insert('auth_item', [
            'name' => '/status/update',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/update'
        ]);


        $this->insert('auth_item', [
            'name' => '/patient',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);


        $this->insert('auth_item', [
            'name' => '/patient/index',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/patient/index'
        ]);

        $this->insert('auth_item', [
            'name' => '/patient/create',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/patient/create'
        ]);

        $this->insert('auth_item', [
            'name' => '/patient/update',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/patient/update'
        ]);

        $this->insert('auth_item', [
            'name' => '/patient/delete',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/patient/delete'
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('auth_item', [
            'name' => '/status/create',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/update'
        ]);

        $this->delete('auth_item', [
            'name' => '/status/delete',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/delete'
        ]);

        $this->insert('auth_item', [
            'name' => '/status/update',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/status',
            'child' => '/status/update'
        ]);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240828_052536_add_route_persions cannot be reverted.\n";

        return false;
    }
    */
}
