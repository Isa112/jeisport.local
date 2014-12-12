<div class="container">
    <div class="main-container">
        <div class="slide-show-block">
            <div class="inner-slide-show-block">
                <h1>Самая обширная база спортивных клубов Москвы!</h1>
                <div class="filter-block">
                    <div class="filter-block-head">
                        <p>Подберите себе спортивный клуб:</p>
                    </div>
                    <div class="filter-block-body">
                        <form action="">
                            <div class="input-text">
                                <label>Выберите категорию</label>
                                <input type="text"/>
                                <label>Выберите подкатегорию</label>
                                <input type="text"/>
                                <label>Пропишите станцию метро</label>
                                <input type="text"/>
                            </div>
                            <div class="input-submit">
                                <input type="submit" value="Применить"/>
                                <input type="submit" value="Сбросить"/>
                            </div>
                        </form>
                        <div class="application-block">
                            <p>Отправьте нам заявку и мы подберем
                                лучшее решение для Вас</p>
                            <a id="anketa" href="/sendrequest">Отправить заявку</a>
                            <p>После подбора наш менеджер свяжется с Вами</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="video-block">
            <h3 class="block-title" style=" background: #1cd8db;">Видео блог от Jeisport</h3>
            <ul class="video-items">
                <li>
                    <a href="#">
                        <img src="img/video-img.jpg" alt=""/>
                        <p>Мультфильм про звезд футбола</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/video-img.jpg" alt=""/>
                        <p>Мультфильм про звезд футбола</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/video-img.jpg" alt=""/>
                        <p>Мультфильм про звезд футбола</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="img/video-img.jpg" alt=""/>
                        <p>Мультфильм про звезд футбола</p>
                    </a>
                </li>
            </ul>
        </div>
        <div class="banner-block">
            <ul class="banner-items">
                <li><a href="#"><img src="img/banner-1.jpg" alt=""/></a></li>
                <li><a href="#"><img src="img/banner-1.jpg" alt=""/></a></li>
                <li><a href="#"><img src="img/banner-1.jpg" alt=""/></a></li>
            </ul>
        </div>

        <div class="news-blog-block">
            <div class="news-block">
                <h3 class="block-title" style=" background: #ecc280;">Новости Jeisport</h3>
                <?php if ($news): ?>
                    <?php foreach ($news as $new): ?>
                        <div class="news-items">
                            <div class="news-item">
                                <img src="/images/news/<?= $new['image'] ?>" alt=""/>
                                <a href="/news/<?= $new['url'] ?>" class="title"><?= $new['name'] ?></a>
                                <p class="description"><?= mb_strimwidth(strip_tags($new['text']), 0, 150, "..."); ?></p>
                                <div class="desc">
                                    <span class="see"><?= $new['views'] ?></span><span class="comment">12</span><span class="date"><?= $new['date'] ?></span>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <?php
                else: echo 'Новостей в базе не найдено!';
                endif;
                ?>
            </div>
            <div class="blog-block">
                <h3 class="block-title" style=" background: #e37e7e;">Блог Jeisport</h3>
                <div class="blog-items">
                    <?php if ($posts): ?>
                        <?php foreach ($posts as $post): ?>
                            <div class="blog-item">
                                <img src="/images/blog/<?= $post['image'] ?>" alt=""/>
                                <a href="/blog/<?= $post['url'] ?>" class="title"><?= $post['url'] ?></a>
                                <p class="description"><?= mb_strimwidth(strip_tags($post['text']), 0, 150, "..."); ?></p>
                                <div class="desc">
                                    <span class="see"><?= $post['views'] ?></span><span class="comment">12</span><span class="date"><?= $post['date'] ?></span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                        <?php
                    else: echo 'Постов в базе не найдено!';
                    endif;
                    ?>
                </div>
            </div>
        </div>

        <div class="category-block">
            <h3 class="block-title" style=" background: #00ac8c;">Категории Jeisport</h3>
            <div class="category-items">
                <?php if ($categories): ?>
                    <?php foreach ($categories as $category): ?>
                        <a href="<?= '/' . $category['url'] ?>">
                            <div class="category-item-bg" style="background: rgba(255, 255, 255, 0.5) url('/images/categories/<?= $category['image3'] ?>') no-repeat center top 10px;"></div>
                            <img src="/images/categories/<?= $category['image2'] ?>" alt=""/>
                            <p><?= $category['name'] ?></p>
                        </a>
                    <?php endforeach; ?>
                    <?php
                else: echo 'Категорий в базе не найдено!';
                endif;
                ?>
            </div>
        </div>
        <?php if ($maintext): ?>
            <div class="description-block">
                <p><?= $maintext ?></p>
            </div>
        <?php endif; ?>
    </div>
</div>