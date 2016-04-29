<?php

namespace app\models;

use Yii;
use yii\helpers\BaseStringHelper;
use yii\web\UploadedFile;

/**
 * This is the model class for table "blog".
 *
 * @property string $id
 * @property string $title
 * @property string $post
 * @property integer $user_id
 * @property string $timestamp
 * @property string $image
 * @property integer $type
 * @property integer $active
 * @property string $tag_id
 *
 * @property User $user
 */
class Blog extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'blog';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'post', 'user_id', 'active'], 'required'],
            [['post'], 'string'],
            [['user_id', 'type', 'active', 'tag_id'], 'integer'],
            [['timestamp'], 'safe'],
            [['title' ], 'string', 'max' => 255],
            [['image'], 'file'],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'post' => 'Post',
            'user_id' => 'Користувач, що створив блог',
            'timestamp' => 'Timestamp',
            'image' => 'Image',
            'type' => 'Type',
            'active' => 'Active',
            'tag_id' => 'Tag ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    /**
     *
     */
    public function beforeSave($insert){

        //die();
        if ($this->isNewRecord) {
            //generate & upload
            $this->string = substr(uniqid('imag_'), 0, 12); //imgRandomString
            $this->img = UploadedFile::getInstance($this, 'image');
            if(is_null($this->img)){
                $this->filename = '';
            }
            else {
                $this->filename = 'images/' . $this->string . '.' . $this->img->extension;
                $this->img->saveAs($this->filename);//image from form
                //save
                $this->image = '/' . $this->filename;
            }

            //$this->description_preview = BaseStringHelper::truncate($this->description, 250, '...');

        }
//        else {
//
//            $this->img = UploadedFile::getInstance($this, 'image');
//
//            if($this->img){
//                $this->string = substr(uniqid('imag_'), 0, 12); //imgRandomString
//                $this->filename = 'images/' . $this->string . '.' . $this->img->extension;
//                $this->img->saveAs($this->filename);//image from form
//                //$this->description_preview = BaseStringHelper::truncate($this->description, 250, '...');
//                //save
//                $this->image = '/' . $this->filename;
//                //$this->image = UploadedFile::getInstance($this, 'image');
//            }
//            else
//            {
//                $company = new Company(); //
//                $info = $company->find()->where(['id' => $_GET["id"]])->one();
//                //var_dump($info["image"]);
//                //die();
//                $this->image = $info["image"];//
//            }
//        }

        return parent::beforeSave($insert);
    }
}
