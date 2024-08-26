<?php

use yii\db\Migration;

/**
 * Class m240826_062201_create_table_patient
 */
class m240826_062201_create_table_patient extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;

        $this->createTable('patient', [
            'id' => $this->primaryKey(),
            'fullName' => $this->string()->notNull(),
            'bithDay' => $this->date()->notNull(),
            'phoneNumber' => $this->integer(),
            'status_id' => $this->smallInteger(8),
            'polyclinic_id' => $this->smallInteger(8),
            'treatmentform_id' => $this->smallInteger(8),
            'coursedisease_id' => $this->smallInteger(8)

        ], $tableOptions);

        $this->alterColumn('patient', 'id', $this->smallInteger(8).'NOT NULL AUTO_INCREMENT');

        $this->addForeignKey(
            'patient_to_status',
            'patient',
            'status_id',
            'status',
            'id',
            'CASCADE'
        );

        $this->addForeignKey(
            'patient_to_polyclinic',
            'patient',
            'polyclinic_id',
            'polyclinic',
            'id',
            'CASCADE'
        );

        $this->addForeignKey(
            'patient_to_treatmentform',
            'patient',
            'treatmentform_id',
            'treatmentform',
            'id',
            'CASCADE'
        );

        $this->addForeignKey(
            'patient_to_coursedisease',
            'patient',
            'coursedisease_id',
            'coursedisease',
            'id',
            'CASCADE'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('patient');
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m240826_062201_create_table_patient cannot be reverted.\n";

        return false;
    }
    */
}
