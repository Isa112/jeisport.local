<div class="sub-menu">
    <div class="container">
        <div class="sub-menu-inner">
            <ul>
                <li><a href="#">О нас</a></li>
                <li><a href="/contacts">Контакты</a></li>
                <li><a href="#">Интернет магазин</a></li>
                <li><a href="#">Реклама</a></li>
                <li><a href="#">Форум</a></li>
            </ul>
        </div>
        <div class="search-block">
            <form action="javascript:">
                <label>Поиск по сайту</label>
                <input class="search" name="search" value="<?php
                       if ($this->uri->segment(1) == 'search') {
                           if ($this->uri->segment(2))
                               echo urldecode($this->uri->segment(2));
                       }
                       ?>" type="text"/>
            </form>
        </div>
    </div>
</div>