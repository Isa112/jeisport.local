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
<!--                <div class="login-block">
                    <form action="">
                        <label>Авторизация</label>
                        <input type="text" name="name" placeholder="имя или e-mail" />
                        <input type="password" name="pass" placeholder="пароль" />
                        <input type="submit" value="Войти"/>
                    </form>
                    <a href="#">Регистрация</a>
                </div>-->
            </div>
        </div>