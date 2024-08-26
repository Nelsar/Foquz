<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "patient".
 *
 * @property int $id
 * @property string $fullName
 * @property string $bithDay
 * @property int|null $phoneNumber
 * @property int|null $status_id
 * @property int|null $polyclinic_id
 * @property int|null $treatmentform_id
 * @property int|null $coursedisease_id
 *
 * @property Coursedisease $coursedisease
 * @property Polyclinic $polyclinic
 * @property Status $status
 * @property Treatmentform $treatmentform
 */
class Patient extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'patient';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fullName', 'bithDay'], 'required'],
            [['bithDay'], 'safe'],
            [['phoneNumber', 'status_id', 'polyclinic_id', 'treatmentform_id', 'coursedisease_id'], 'integer'],
            [['fullName'], 'string', 'max' => 255],
            [['coursedisease_id'], 'exist', 'skipOnError' => true, 'targetClass' => Coursedisease::class, 'targetAttribute' => ['coursedisease_id' => 'id']],
            [['polyclinic_id'], 'exist', 'skipOnError' => true, 'targetClass' => Polyclinic::class, 'targetAttribute' => ['polyclinic_id' => 'id']],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::class, 'targetAttribute' => ['status_id' => 'id']],
            [['treatmentform_id'], 'exist', 'skipOnError' => true, 'targetClass' => Treatmentform::class, 'targetAttribute' => ['treatmentform_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fullName' => 'Full Name',
            'bithDay' => 'Bith Day',
            'phoneNumber' => 'Phone Number',
            'status_id' => 'Status ID',
            'polyclinic_id' => 'Polyclinic ID',
            'treatmentform_id' => 'Treatmentform ID',
            'coursedisease_id' => 'Coursedisease ID',
        ];
    }

    /**
     * Gets query for [[Coursedisease]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCoursedisease()
    {
        return $this->hasOne(Coursedisease::class, ['id' => 'coursedisease_id']);
    }

    /**
     * Gets query for [[Polyclinic]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPolyclinic()
    {
        return $this->hasOne(Polyclinic::class, ['id' => 'polyclinic_id']);
    }

    /**
     * Gets query for [[Status]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStatus()
    {
        return $this->hasOne(Status::class, ['id' => 'status_id']);
    }

    /**
     * Gets query for [[Treatmentform]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTreatmentform()
    {
        return $this->hasOne(Treatmentform::class, ['id' => 'treatmentform_id']);
    }
}
