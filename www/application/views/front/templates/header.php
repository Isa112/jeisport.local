<body>

    <a href="#" data-modal-id="#modal1" class="enter modal-open"><img src="/img/social/icon_enter.png" alt="">Вход</a>
    <a href="#" data-modal-id="#modal2" class="ticket modal-open"><img src="/img/social/icon_sbs.png" alt="">СБС</a>

    <!-- registration / enter -->

    <div id="modal1" class="modal-wrapper">
        <div class="bg"></div>
        <div class="modal modal-enter">
            <div class="modal-title"><a href="#" class="close-modal"></a></div>
            <div class="modal-content">
                <h3>Вход или регистрация</h3>
                <form action="">
                    <div class="registration-block">
                        <span>Регистрация</span>
                        <input type="text" placeholder="Логин или e-mail">
                        <input type="text" placeholder="Пароль">
                        <input type="text" placeholder="Повторите пароль">
                        <input type="button" value="Регистрация">
                    </div>
                    <div class="enter-block">
                        <span>Авторизация</span>
                        <a href="#" class="fc_icon"></a><a href="#" class="tw_icon"></a>
                        <input type="text" placeholder="Логин или e-mail">
                        <input type="text" placeholder="Пароль">
                        <input type="button" value="Войти">
                    </div>
                </form>
                <div class="clear"></div>
                <p>Вся информция остается конфиденциальной и не передается третьим лицам</p>
            </div>
        </div>
    </div>

    <div id="modal2" class="modal-wrapper">
        <div class="bg"></div>
        <div class="modal modal-registration">
            <div class="modal-title"><a href="#" class="close-modal close-modal2"></a></div>
            <div class="modal-content">
                <h3>Получи скидку в спортивные клубы Москвы!</h3>
                <ul>
                    <li><img src="/img/popup_/img/img_1.png" alt=""></li>
                    <li><img src="/img/popup_/img/img_2.png" alt=""></li>
                    <li><img src="/img/popup_/img/img_3.png" alt=""></li>
                    <li><img src="/img/popup_/img/Untitled-4.png" alt=""></li>
                </ul>
                <p>Устали однообразно курсировать между домом и работой? Решили разбавить этот тандем яркой ноткой, занявшись своим телом и здоровьем, ведь «в здоровом теле – здоровый дух»? А может, вы ищете спортивные секции для детей, поскольку осенью снижается физическая активность, столь необходимая для полноценного развития ребенка? Тогда самое время сесть поудобнее и изучить самую актуальную и подробную информацию про спортивные клубы Москвы! </p>
                <div class="ticket_block">
                    <div class="cost">
                        <p>Стоимость 200 руб.</p>
                        <span>Доставка по Москве 350 рублей.</span>
                    </div>
                    <div class="ticket_form">
                        <h5>Для получения студ билета спортсмена укажите:</h5>
                        <input type="radio" name="radio1" value="Оплата при доставке курьеру">
                        <label for="radio1">Оплата при доставке курьеру</label>
                        <input type="radio" name="radio2" value="Заберу сам(а) - Оплатить онлайн">
                        <label for="radio2">Заберу сам(а) - Оплатить онлайн"</label>
                        <input type="text" placeholder="Имя">
                        <input type="text" placeholder="Фамилия">
                        <input type="text" class="no-margin" placeholder="Отчество">
                        <input type="text" placeholder="Место учебы">
                        <input type="text" placeholder="Контакты">
                        <input type="button" value="Отправить">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="modal3" class="modal-wrapper">
        <div class="bg"></div>
        <div class="modal modal-questionnaire">
            <div class="modal-title"><a href="#" class="close-modal"></a></div>
            <div class="modal-content">
                <h3>Заявка на подбор клуба</h3>
                <form action="">
                    <span>Все поля обязательны для заполнения!</span>
                    <input type="text" placeholder="Имя">
                    <input type="text" placeholder="Возраст">
                    <input type="text" placeholder="Пол">
                    <input type="text" placeholder="Какими видами спорта хотели бы заниматься">
                    <input type="text" placeholder="Бижайщее метро">
                    <input type="text" placeholder="Противопоказания от врача">
                    <input type="text" placeholder="Сколько готовы платить в месяц">
                    <input type="text" placeholder="Телефон">
                    <input type="button" value="Отправить">
                </form>
                <p>Вся информция остается конфиденциальной и не передается третьим лицам</p>
            </div>
        </div>
    </div>



    <header>
        <div class="header_wrapper">
            <div class="logo">
                <a href=""><img src="/img/logo.png" height="66" width="193" alt=""></a>
            </div><!-- logo -->
            <ul>

                <li><a href="/">Главная</a></li>
                <?php
                foreach ($categories as $category):
                    if ($category['active'] == 'on'):
                        ?>
                        <li><a style="background: #00a68e url(/images/categories/<?= $category['image'] ?>) center 22px no-repeat;" href="<?= '/' . $category['url'] ?>"><?= $category['name'] ?></a></li>
                        <?php
                    endif;
                endforeach;
                ?>
            </ul><!-- navigation -->
        </div><!-- header wrapper -->
    </header><!-- header -->