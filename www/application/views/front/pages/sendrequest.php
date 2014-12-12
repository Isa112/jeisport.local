<div class="anket-form" style="padding: 10px 30px">
    <?= validation_errors(); ?>
    <?php
    if ($this->session->userdata('error')) {
        echo $this->session->userdata('error');
    }
    $this->session->unset_userdata('error');
    ?>
    <form method="POST" action="javascript:">
        <div class="form-item">
            <label for="name">Имя<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Имя"')){ echo 'style="border-color:red;"'; } ?> type="text" name="name" size="60" maxlength="128" value="<?= set_value('name') ?>" >
        </div>
        <div class="form-item">
            <label for="age">Возраст<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Возраст"')){ echo 'style="border-color:red;"'; } ?> type="text" name="age" size="60" maxlength="128" value="<?= set_value('age') ?>" >
        </div>
        <div class="form-item">
            <label for="sex">Пол<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Пол"')){ echo 'style="border-color:red;"'; } ?> type="text" name="sex" size="60" maxlength="128" value="<?= set_value('sex') ?>" >
        </div>
        <div class="form-item">
            <label for="weight">Вес<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Вес"')){ echo 'style="border-color:red;"'; } ?> type="text" name="weight" size="60" maxlength="128" value="<?= set_value('weight') ?>" >
        </div>
        <div class="form-item">
            <label for="sports">Какими видами спорта хотели бы заниматься<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <textarea <?php if(strpos(validation_errors(),'"Какими видами спорта хотели бы заниматься"')){ echo 'style="border: 2px solid red;"'; } ?> name="sports" cols="65" rows="5"><?= set_value('sports') ?></textarea>
        </div>
        <div class="form-item">
            <label for="subway">Ближайшее метро<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Ближайшее метро"')){ echo 'style="border-color:red;"'; } ?> type="text" name="subway" size="60" maxlength="128" value="<?= set_value('subway') ?>" >
        </div>
        <div class="form-item">
            <label for="contrains">Противопоказания от врача<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <textarea <?php if(strpos(validation_errors(),'"Противопоказания от врача"')){ echo 'style="border: 2px solid red;"'; } ?> name="contrains" cols="65" rows="5"><?= set_value('contrains') ?></textarea>
        </div>
        <div class="form-item">
            <label for="canpay">Сколько готовы платить в месяц<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Сколько готовы платить в месяц"')){ echo 'style="border-color:red;"'; } ?> type="text" name="canpay" size="60" maxlength="128" value="<?= set_value('canpay') ?>" >
        </div>
        <div class="form-item">
            <label for="email">E-mail<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"E-mail"')){ echo 'style="border-color:red;"'; } ?> type="text" name="email" size="60" maxlength="128" value="<?= set_value('email') ?>" >
        </div>
        <div class="form-item">
            <label for="phone">Телефон<span style="color:red;" title="Это поле обязательно для заполнения">*</span></label>
            <input <?php if(strpos(validation_errors(),'"Телефон"')){ echo 'style="border-color:red;"'; } ?> type="text" name="phone" size="60" maxlength="128" value="<?= set_value('phone') ?>" >
        </div>
        <div class="form-item">
            <input type="hidden" name="do" value="sendrequest">
            <input type="submit" value="Отправить" onclick="javascript:sendbid()">
        </div>
    </form>
</div>
<script>
    function sendbid() {
        $.ajax({
            url: '/sendrequest/save',
            type: "POST",
            dataType: "html",
            data: $('.anket-form form').serialize(),
            success: function (response) {
                document.getElementById('cboxLoadedContent').innerHTML = response;
           },
            error: function (response) {
                document.getElementById('cboxLoadedContent').innerHTML = "Ошибка при отправке формы";
            }
        });
        return false;
    }
</script>