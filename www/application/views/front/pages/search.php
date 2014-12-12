<div class="container">
    <div class="main-container">
        <div class="breadcrumbs">
            <ul>
                <li><span><a href="/">Главная</a></span></li>
                <li><span>Поиск</span></li>
            </ul>
        </div>
        <div class="search-page">
            <div class="search-form">
                <h1>Поиск</h1>
                <form id="find_form" action="javascript:">
                    <div class="search-block-item">
                        <label>Что искать?</label>
                        <input class="search" name="search" value="<?php
                        if ($this->uri->segment(2))
                            echo urldecode($this->uri->segment(2));
                        ?>" type="text"/>
                    </div>
                    <div class="search-block-item">
                        <label>Где искать?</label>
                        <select>
                            <option>Новости</option>
                            <option>Блоги</option>
                            <option>Спортивные точки</option>
                        </select>
                    </div>
                    <div class="search-block-item">
                        <input id="do_find" type="submit" value="Найти"/>
                    </div>
                </form>
            </div>
            <div class="search-results">
                <?php if (isset($res)): ?>
                    <p class="result-count">Всего найдено: <span><?= count($res) ?></span> записи</p>
                <?php endif; ?>
                <div class="search-result-items">
                    <?php
                    if (isset($res)):
                        foreach ($res as $r):
                            ?>
                            <div class="search-result-item">
                                <?php
                                $sport = $this->sports_model->get_sport_for_point($r['sport_id']);
                                $category = $this->categories_model->get_category_for_point($sport['category_id']);
                                ?>
                                <a class="title" href="/<?= $category['url'] ?>/<?= $sport['url'] ?>/<?= $r['url'] ?>"><?= $r['name'] ?></a>
                                <p class="desc">
                                    <?php
                                    $s = urldecode($this->uri->segment(2));
                                    $pos = stripos($r['text'], $s);
                                    $str = mb_strimwidth(strip_tags($r['text']), 0, 250, "");

                                    //$str = preg_replace('/([^\w]|)' . $s . '([^\w]|)/i', '<span style="font-weight:bold;">$0</span>', $str);
                                    ?>
                                    <?= $str ?>
                                </p>
                            </div>
                            <?php
                        endforeach;
                    else:
                        echo 'Нет результатов.';
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>