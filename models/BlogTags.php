<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "blog_tags".
 *
 * @property string $id_blog
 * @property string $id_tag
 */
class BlogTags extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'blog_tags';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_blog', 'id_tag'], 'required'],
            [['id_blog', 'id_tag'], 'integer'],
            [['id_tag', 'id_blog'], 'unique', 'targetAttribute' => ['id_tag', 'id_blog'], 'message' => 'The combination of Id Blog and Id Tag has already been taken.'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_blog' => 'Id Blog',
            'id_tag' => 'Id Tag',
        ];
    }
}
