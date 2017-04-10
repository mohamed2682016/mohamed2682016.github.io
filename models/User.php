<?php

namespace app\models;

use yii\db\ActiveRecord;


class User extends ActiveRecord
{
	// function to return user table
    public static function tableName()
    {
        return '{{user}}';
    }
	
    // Validation rules 
    public function rules()
    {
        return [
            [['name', 'username','password', 'email','mobile', 'gender'], 'required'],
            ['email', 'email'],
        ];
    }
}