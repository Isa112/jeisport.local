<div class="container">
    <div class="main-container">
        <div class="breadcrumbs">
            <ul>
                <li><span><a href="#">Главная</a></span></li>
                <li><span>Единоборства</span></li>
            </ul>
        </div>
        <div class="contact-page">
            <h1>Контакты</h1>
            <div class="body">
                <p>Российская Федерация, г. Москва</p>
                <p>ул. Домская, дом 14, корпус 2</p>
                <p>Ближайшее метро м. Шабаловское</p>
                <p>Контактные телефоны:</p>
                <p>Городской: +7(495) 669 56 83</p>
                <p>Мобильный: +7(925) 421 21 28</p>
                <p>График работы: </p>
                <p>Понедельник - Пятница с 9.00 до 18.00</p>
                <p>Выходные дни: Суббота - Воскресенье</p>
            </div>
            <div class="callback-form">
                <div class="callback-form-header">
                    <p>Вы можете отправить нам сообщение
                        в форме обратной связи справа</p>
                </div>
                <form method="POST" action="/contacts">
                    <?= validation_errors(); ?>
                    <?php
                    if ($this->session->userdata('error')) {
                        echo $this->session->userdata('error');
                    }
                    $this->session->unset_userdata('error');
                    ?>
                    <label>Ваше имя</label>
                    <input <?php if(strpos(validation_errors(),'"Имя"')){ echo 'style="border-color:red;"'; } ?> name="name" type="text" value="<?= set_value('name') ?>">
                    <label>Ваш E-mail</label>
                    <input <?php if(strpos(validation_errors(),'"E-mail"')){ echo 'style="border-color:red;"'; } ?> name="email" type="text" value="<?= set_value('email') ?>">
                    <label>Ваш телефон</label>
                    <input <?php if(strpos(validation_errors(),'"Телефон"')){ echo 'style="border-color:red;"'; } ?> name="phone" type="text" value="<?= set_value('phone') ?>">
                    <label>Тема</label>
                    <input <?php if(strpos(validation_errors(),'"Тема сообщения"')){ echo 'style="border-color:red;"'; } ?> name="theme" type="text" value="<?= set_value('theme') ?>">
                    <label>Текст сообщения</label>
                    <textarea <?php if(strpos(validation_errors(),'"Сообщение"')){ echo 'style="border-color:red;"'; } ?> name="msg" cols="30" rows="10"><?= set_value('msg') ?></textarea>
                    <input type="hidden" name="do" value="sendfeedback">
                    <input type="submit" value="Отправить">
                </form>
            </div>
            <h3 class="block-title" style=" clear: both; background: #1cd8db; margin: 25px auto;">Мы находимся</h3>
            <div id="map-block"></div>
        </div>
    </div>
</div>