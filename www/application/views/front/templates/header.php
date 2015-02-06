<body>

    <a href="#" data-modal-id="#modal1" class="enter modal-open"><img src="/img/social/icon_enter.png" alt="">Вход</a>
    <a href="#" data-modal-id="#modal2" class="ticket modal-open"><img src="/img/social/icon_sbs.png" alt=""><span>СБС</span><i>Студенческий билет спортсмена</i></a>

    <!-- registration / enter -->

    <div id="modal1" class="modal-wrapper">
        <div class="bg"></div>
        <div class="modal modal-enter">
            <div class="modal-title"><a href="#" class="close-modal"></a></div>


            <div class="modal-content">
                <?php if (!$this->session->userdata('phpbb_username') && !$this->session->userdata('phpbb_userpassword')): ?>
                    <h3>Вход или регистрация</h3>
                    <div class="registration-block">
                        <form method="post" action="/forum/ucp.php?mode=register&sid=9tq6r0t2gd34g38a68f0t01f3gf68a54">
                            <span>Регистрация</span>
                            <input type="text" name="username" placeholder="Логин">
                            <input type="text" name="email" placeholder="E-mail" />
                            <input type="password" name="new_password" placeholder="Пароль">
                            <input type="password" name="password_confirm" placeholder="Повторите пароль">
                            <input type="hidden" name="redirect" value="/forum/" />
                            <input type="hidden" name="login" value="external" />
                            <input type="hidden" name="from_external" value="external" />
                            <input type="hidden" name="tz" value="Asia/Bishkek" />
                            <input type="hidden" name="lang" value="ru" />
                            <input type="hidden" name="creation_time" value="<?= time() ?>" />
                            <input type="hidden" name="submit" value="1" />
                            <input type="submit" value="Регистрация">
                        </form>
                    </div>
                    <div class="enter-block">
                        <form method="get" action="/forumlogin/login">
                            <span>Авторизация</span>
                            <a href="#" class="fc_icon"></a><a href="#" class="tw_icon"></a>
                            <input type="text" name="username" placeholder="Логин или e-mail">
                            <input type="password" name="password" placeholder="Пароль">
                            <input type="hidden" name="redirect" value="/" />
                            <input type="hidden" name="login" value="external" />
                            <input type="submit" value="Войти">
                        </form>
                    </div>
                    <div class="clear"></div>
                <?php else: ?>
                    <p>Добро пожаловать, <?= $this->session->userdata('phpbb_username') ?>! <a href="/forumlogin/login1">Перейти в форум</a></p>
                    <p><a href="forumlogin/logout">Выход</a></p>
                <?php endif; ?>
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
                    <li><img src="/img/popup_img/img_1.png" alt=""></li>
                    <li><img src="/img/popup_img/img_2.png" alt=""></li>
                    <li><img src="/img/popup_img/img_3.png" alt=""></li>
                    <li><img src="/img/popup_img/Untitled-4.png" alt=""></li>
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
            <div id="request_res"></div>
        </div>
    </div>



    <header id="header">
        <div class="header_wrapper">
            <div class="logo">
                <a href="/"><img src="/img/logo.png" height="66" width="193" alt=""></a>
            </div><!-- logo -->
            <ul>

                <li><a href="/">Главная</a></li>
                <?php
                foreach ($categories as $category):
                    if ($category['active'] == 'on'):
                        ?>
                        <li><a style="background: #00a68e url(/images/categories/<?= $category['image'] ?>) center 22px no-repeat;" href="<?= '/' . $category['url'] ?>/"><?= $category['name'] ?></a></li>
                            <?php
                        endif;
                    endforeach;
                    ?>
            </ul><!-- navigation -->
        </div><!-- header wrapper -->
    </header><!-- header -->