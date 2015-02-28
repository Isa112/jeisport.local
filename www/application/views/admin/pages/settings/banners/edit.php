<div class="col-md-10">
    <div class="row">
        <div class="col-md-12">
            <a href="/admin/settings/banners">
                <button type="button" class="btn btn-default btn-default"><span class='glyphicon glyphicon-step-backward'></span> Назад к списку</button>
            </a>
        </div>
    </div>
    <div class="page-header">
        <h2>Редактирование рекламного баннера</h2>
    </div>
    <?= form_open_multipart('admin/settings/banners/edit/' . $banner['id']) ?>
    <div class="row" style="margin-bottom: 5px;">
        <div class="col-md-12">
            <?= validation_errors(); ?>
            <?php
            if ($this->session->userdata('error')) {
                echo $this->session->userdata('error');
            }
            $this->session->unset_userdata('error');
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="checkbox">
                <label>
                    <input name='active' <?php
                    if ($banner['active'] == 'on') {
                        echo 'checked';
                    }
                    ?> type="checkbox"> Активен
                </label>
            </div>
            <div class="form-group">
                <label for="image">Изображение</label><br/>
                <div class="well"><img width="400px" src="/images/banners/<?= $banner['image'] ?>"></div>
                <input name='image' type="file" class="btn-file" id="image">
                <p class="help-block">Выберите фото</p>
            </div>
            <div class="form-group">
                <label for="url">Ссылка</label>
                <input required name='url' value="<?= $banner['url'] ?>" type="url" class="form-control" id="url" placeholder="Название">
            </div>
            <div class="form-group">
                <label for="pos">Позиция</label>
                <select name="pos" class="form-control" id="pos" required>
                    <!--<option value="" disabled style="display: none;">Выберите вид спорта...</option>-->
                    <option value="main" <?php if ($banner['pos'] == 'main'): ?>selected<?php endif ?>>На главной</option>
                    <option value="news" <?php if ($banner['pos'] == 'news'): ?>selected<?php endif ?>>На странице "Новости"</option>
                    <option value="blog" <?php if ($banner['pos'] == 'blog'): ?>selected<?php endif ?>>На странице "Блог"</option>
                </select>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">Кликов</div>
                <div class="panel-body"><?= $banner['clicks'] ?></div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">Показов</div>
                <div class="panel-body"><?= $banner['views'] ?></div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 10px;">
        <div class="col-md-12">
            <input type='hidden' name='do' value='bannerEdit'>
            <button type="submit" class="btn btn-default">Сохранить</button>
        </div>
    </div>
    <?= form_close(); ?>
</div>
