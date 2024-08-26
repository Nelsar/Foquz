<?php

use yii\db\Migration;

/**
 * Class m240826_080305_add_data_to_polyclinic
 */
class m240826_080305_add_data_to_polyclinic extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->insert('polyclinic', ['name' => 'Городская поликлиника №1']);
        $this->insert('polyclinic', ['name' => 'Городская поликлиника №2']);
        $this->insert('polyclinic', ['name' => 'Городская поликлиника №3']);
        $this->insert('polyclinic', ['name' => 'Городская поликлиника №4']);
        $this->insert('polyclinic', ['name' => 'Городская поликлиника №5']);
        $this->insert('polyclinic', ['name' => 'Городская поликлиника №6']);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->delete('polyclinic', ['name' => 'Городская поликлиника №1']);
        $this->delete('polyclinic', ['name' => 'Городская поликлиника №2']);
        $this->delete('polyclinic', ['name' => 'Городская поликлиника №3']);
        $this->delete('polyclinic', ['name' => 'Городская поликлиника №4']);
        $this->delete('polyclinic', ['name' => 'Городская поликлиника №5']);
        $this->delete('polyclinic', ['name' => 'Городская поликлиника №6']);
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_080305_add_data_to_polyclinic cannot be reverted.\n";

        return false;
    }
    */
}
