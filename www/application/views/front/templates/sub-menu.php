<nav>
    <div class="wrapper">
        <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="#">О нас</a></li>
            <li><a href="#">Контакты</a></li>
            <li><a href="#">Интернет магазин</a></li>
            <li><a href="#">Реклама</a></li>
            <li><a href="#">Форум</a></li>
        </ul>
        <div class="search">
            <span>Поиск по сайту</span>
            <input type="text" value="<?php
            if ($this->uri->segment(1) == 'search') {
                if ($this->uri->segment(2))
                    echo urldecode($this->uri->segment(2));
            }
            ?>">
            <input type="button" value="Искать">
        </div>
    </div>
</nav>