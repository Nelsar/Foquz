<?php

use yii\db\Migration;

/**
 * Class m240828_063515_add_polyclinic_route_permision
 */
class m240828_063515_add_polyclinic_route_permision extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {

        $this->insert('auth_item', [
            'name' => '/polyclinic/index',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/index'
        ]);

        $this->insert('auth_item', [
            'name' => '/polyclinic/create',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/create'
        ]);

        $this->insert('auth_item', [
            'name' => '/polyclinic/update',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/update'
        ]);

        $this->insert('auth_item', [
            'name' => '/polyclinic/delete',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->insert('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/delete'
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('auth_item', [
            'name' => '/polyclinic',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item', [
            'name' => '/polyclinic/index',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/index'
        ]);

        $this->delete('auth_item', [
            'name' => '/polyclinic/create',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/create'
        ]);

        $this->delete('auth_item', [
            'name' => '/polyclinic/update',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/update'
        ]);

        $this->delete('auth_item', [
            'name' => '/polyclinic/delete',
            'type' => 1,
            'description' => null,
            'data' => null,
            'created_at' => 1724574362,
            'updated_at' => 1724574362,
            'group_code' => null
        ]);

        $this->delete('auth_item_child', [
            'parent' => '/patient',
            'child' => '/polyclinic/delete'
        ]);

        
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240828_063515_add_polyclinic_route_permision cannot be reverted.\n";

        return false;
    }
    */
}
