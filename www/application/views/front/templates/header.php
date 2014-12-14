<body>
    <div class="wrapper">
        <header>
            <div class="logo">
                <a href="/"><img src="/logo.png" alt=""/></a>
            </div>
        </header>
        <div class="main-menu">
            <div class="container">
                <ul>
                    <?php
                    foreach ($categories as $category):
                        if ($category['active'] == 'on'):
                            ?>
                            <li>
                                <a href="<?= '/' . $category['url'] ?>">
                                    <div class="image"><img src="/images/categories/<?= $category['image'] ?>" alt=""/></div>
                                    <span><?= $category['name'] ?></span>
                                </a>
                            </li>
                            <?php
                        endif;
                    endforeach;
                    ?>
                </ul>
                <div class="login-block">
                    <?php if (!$this->session->userdata('phpbb_username') && !$this->session->userdata('phpbb_userpassword')): ?>
                    <form method="get" action="/forumlogin/login">
                        <label><a href="/forum/ucp.php?mode=login">Авторизация</a></label>
                        <input type="text" name="username" placeholder="имя или e-mail" />
                        <input type="password" name="password" placeholder="пароль" />
                        <input type="hidden" name="redirect" value="/" />
                        <input type="hidden" name="login" value="external" />
                        <input type="submit" value="Войти"/>
                    </form>
                        <a href="/forum/ucp.php?mode=register">Регистрация</a>

                        <form method="post" action="/forum/ucp.php?mode=register&sid=9tq6r0t2gd34g38a68f0t01f3gf68a54">
                            <label>Регистрация</label>
                            <input type="text" name="username" placeholder="логин" />
                            <input type="text" name="email" placeholder="e-mail" />
                            <input type="password" name="new_password" placeholder="пароль" />
                            <input type="password" name="password_confirm" placeholder="подтверждение пароля" />
                            <input type="hidden" name="redirect" value="/forum/" />
                            <input type="hidden" name="login" value="external" />
                            <input type="hidden" name="from_external" value="external" />
                            <input type="hidden" name="tz" value="Asia/Bishkek" />
                            <input type="hidden" name="lang" value="ru" />
                            <input type="hidden" name="creation_time" value="<?=time()?>" />
                            <input type="hidden" name="submit" value="1" />
                            <input type="submit" value="Войти"/>
                        </form>
                    <?php else:?>
                        <p>Добро пожаловать, <?=$this->session->userdata('phpbb_username')?>! <a href="/forumlogin/login1">Перейти в форум</a></p>
                        <p><a href="forumlogin/logout">Выход</a></p>
                    <?php endif;?>
                    <script type="text/javascript">

                    </script>



                </div>
            </div>
        </div>