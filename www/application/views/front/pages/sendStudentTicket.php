<form id='sbs_call_form' action="javascript:" method="post">
    <h5>Для получения студ билета спортсмена укажите:</h5>
    <input <?php
    if ($this->input->post('delivery') == 'courier') {
        echo 'checked';
    }
    ?> type="radio" checked="" name="delivery" id="courier" value="courier">
    <label for="courier">Оплата при доставке курьеру</label>
    <input <?php
    if ($this->input->post('delivery') == 'self') {
        echo 'checked';
    }
    ?> type="radio" name="delivery" id="self" value="self">
    <label for="self">Заберу сам(а) - Оплатить онлайн"</label>
    <input <?php
    if (strpos(validation_errors(), '"Имя"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="name" value="<?= set_value('name') ?>" type="text" placeholder="Имя">

    <input <?php
    if (strpos(validation_errors(), '"Фамилия"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="sname" value="<?= set_value('sname') ?>" type="text" placeholder="Фамилия">

    <input <?php
    if (strpos(validation_errors(), '"Отчество"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="mname" value="<?= set_value('mname') ?>" type="text" class="no-margin" placeholder="Отчество">

    <input <?php
    if (strpos(validation_errors(), '"Место учебы"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="univer" value="<?= set_value('univer') ?>" type="text" placeholder="Место учебы">

    <input <?php
    if (strpos(validation_errors(), '"Контакты"')) {
        echo 'style="border-color:red;"';
    }
    ?> name="contacts" value="<?= set_value('contacts') ?>" type="text" placeholder="Контакты">
    <input type="hidden" name="do" value="sendsbs">
    <div class="g-recaptcha" data-sitekey="6Ld5HgITAAAAAJEUWjxZWgYJw3GT8H-VtE9tjauw"></div>
    <input id='send_sbs_btn' type="button" value="Отправить" onclick="javascript:sendsbs()">
    <div id="send_sbs_img" style="text-align: center; display: none;"><img src="/img/loading2.gif"></div>
</form>