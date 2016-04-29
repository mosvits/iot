<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use mihaildev\ckeditor\CKEditor;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Blog */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="blog-form">

    <?php $form = ActiveForm::begin([
        'options' => ['enctype' => 'multipart/form-data']
    ]); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'post')->widget(CKEditor::className(),[
        'editorOptions' => [
            'preset' => 'full', //разработанны стандартные настройки basic, standard, full данную возможность не обязательно использовать
            'inline' => false, //по умолчанию false
        ],
    ]) ?>

    <?= $form->field($model, 'user_id')->hiddenInput()->label(false) ?>

    <?= $form->field($model, 'timestamp')->hiddenInput()->label(false) ?>

    <?= $form->field($model, 'image')->fileInput() ?>

    <?= $form->field($model, 'type')->widget(Select2::classname(), [
        'data' => ArrayHelper::map(\app\models\BlogType::find()->all(), 'id', 'name'),//array_merge(["" => ""], $data),
        'language' => 'en',
        'options' => ['placeholder' => 'Обрати категорію'],

        'pluginOptions' => [
            'allowClear' => true,
            'minimumInputLength' => 0,
        ],

    ]) ?>

    <?= $form->field($model, 'active')->dropDownList(["Відімкнути", "Відображати"]) ?>

    <!--?= $form->field($model, 'tag_id')->textInput(['maxlength' => true]) ?-->

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
