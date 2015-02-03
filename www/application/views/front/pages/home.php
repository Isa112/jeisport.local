<div class="content">
    <div class="wrapper">

        <div class="main_banner">
            <video autoplay="" loop="" muted="" class="bgvideo" id="bgvideo"><source src="video/video.mp4" type="video/mp4"></video>

            <div class="clear"></div><!-- clear -->

            <div class="main_banner_inner">

                <h1 style="padding-top: 40px;">Самая обширная база спортивных клубов Москвы!</h1>
                <div class="banner_form">
                    <h2>Подбери себе  спортивный клуб:</h2>

                    <form action="">
                        <div class="input-text">
                            <span>Выберите категорию</span>
                            <label for="">
                                <i></i>
                                <select id="select-1" placeholder="категория" value="категория">
                                    <option value="category">категория 1</option>
                                    <option value="category">категория 2</option>
                                    <option value="category">категория 3</option>
                                    <option value="category">категория 4</option>
                                    <option value="category">категория 5</option>
                                </select>
                            </label>
                        </div>
                        <div class="input-text">
                            <span>Выберите подкатегорию</span>
                            <label for="">
                                <i></i>
                                <select id="select-2" placeholder="подкатегория" value="подкатегория">
                                    <option value="subcategory">подкатегория 1</option>
                                    <option value="subcategory">подкатегория 2</option>
                                    <option value="subcategory">подкатегория 3</option>
                                    <option value="subcategory">подкатегория 4</option>
                                    <option value="subcategory">подкатегория 5</option>
                                </select>
                            </label>
                        </div>
                        <div class="input-text input-text-3">
                            <span>Пропишите станцию метро</span>
                            <label for="">
                                <i></i>
                                <select id="select-3" placeholder="метро" value="метро">
                                    <option value="metro">станция метро 1</option>
                                    <option value="metro">станция метро 2</option>
                                    <option value="metro">станция метро 3</option>
                                    <option value="metro">станция метро 4</option>
                                    <option value="metro">станция метро 5</option>
                                </select>
                            </label>
                        </div>
                        <div class="input-submit">
                            <input type="submit" value="Применить">
                            <input type="submit" class="reset_btn" value="Сбросить">
                        </div>
                    </form>
                    <div class="clear"></div><!-- clear -->
                    <div class="btn_wrapper">
                        <p class="btn_title">Отправьте нам заявку и мы подберем лучшее решение для Вас</p>
                        <a href="#" data-modal-id="#modal3" class="send_btn modal-open">Отправить заявку</a><!-- send_btn -->
                        <p>После подбора наш менеджер свяжется с Вами</p>
                    </div>

                </div><!-- banner_form -->
            </div><!-- main_banner_inner -->

        </div><!-- main_banner -->

        <div class="categories">
            <h4>Категории Jeisport</h4>
            <ul>
                <!-- li -->
                <?php if ($categories): ?>
                    <?php foreach ($categories as $category): ?>
                <li style="background: url(/images/categories/<?= $category['image2'] ?>) 0 0 no-repeat;">
                    <div class="visible_block">
                        <h6><?= $category['name'] ?></h6>
                    </div>
                    <div class="hidden_block">
                        <a href="<?= '/' . $category['url'] ?>/"><img src="/images/categories/<?= $category['image3'] ?>" alt=""></a>
                    </div>
                </li>
                <?php endforeach; ?>
                    <?php
                else: echo 'Категорий в базе не найдено!';
                endif;
                ?>
                <!-- /li -->
            </ul>
        </div><!-- /categories -->

        <div class="banner">
            <a href="#"><img src="img/banner-1.jpg" height="90" width="1000" alt=""></a>
        </div><!-- banner -->

        <h3 class="block-title">Видео блог от Jeisport</h3><!-- title -->

        <div class="flexslider">

            <div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 800%; -webkit-transition-duration: 0s; transition-duration: 0s; -webkit-transform: translate3d(-1000px, 0px, 0px); transform: translate3d(-1000px, 0px, 0px);"><li class="clone" aria-hidden="true" style="width: 1000px; float: left; display: block;">
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Лучшие бои Майка Тайсона</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Мультфильм про звезд футбола</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Трансформация - Марк Фитт</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Фитнесс для девушек в спорт зале</a>
                        </div>
                    </li>

                    <li class="flex-active-slide" style="width: 1000px; float: left; display: block;">
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Лучшие бои Майка Тайсона</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Мультфильм про звезд футбола</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Трансформация - Марк Фитт</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Фитнесс для девушек в спорт зале</a>
                        </div>
                    </li>

                    <li class="" style="width: 1000px; float: left; display: block;">
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Лучшие бои Майка Тайсона</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Мультфильм про звезд футбола</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Трансформация - Марк Фитт</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Фитнесс для девушек в спорт зале</a>
                        </div>
                    </li>

                    <li class="clone" aria-hidden="true" style="width: 1000px; float: left; display: block;">
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Лучшие бои Майка Тайсона</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Мультфильм про звезд футбола</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Трансформация - Марк Фитт</a>
                        </div>
                        <div class="video_block">
                            <a href="#" class="img_link"><img src="img/video-img.jpg" alt="" draggable="false"></a>
                            <a href="#" class="title_link">Фитнесс для девушек в спорт зале</a>
                        </div>
                    </li></ul></div><ol class="flex-control-nav flex-control-paging"><li><a class="flex-active">1</a></li><li><a class="">2</a></li></ol><ul class="flex-direction-nav"><li><a class="flex-prev" href="#">Previous</a></li><li><a class="flex-next" href="#">Next</a></li></ul></div><!-- slider -->

        <section>

            <div class="news">
                <h4>Новости Jeisport</h4>
                <?php if ($news): ?>
                    <?php foreach ($news as $new): ?>
                        <!-- block_item -->
                        <div class="block_item">
                            <a href="/news/<?= $new['url'] ?>" class="block_img_wrapper"><img src="/images/news/<?= $new['image'] ?>" alt=""></a>
                            <div class="block_item_content">
                                <h5><a href="/news/<?= $new['url'] ?>"><?= $new['name'] ?></a></h5>
                                <p><?= mb_strimwidth(strip_tags($new['text']), 0, 150, "..."); ?></p>
                                <div class="info_block">
                                    <a href="/news/<?= $new['url'] ?>" class="views"><?= $new['views'] ?></a>
                                    <a href="/news/<?= $new['url'] ?>" class="comments">12</a>
                                    <span><?= $new['date'] ?></span>
                                </div><!-- info_block -->
                            </div><!-- block_item_content -->
                        </div>
                    <?php endforeach; ?>
                    <?php
                else: echo 'Новостей в базе не найдено!';
                endif;
                ?>
                <!-- /block_item -->

            </div><!-- news -->

            <div class="blog">
                <h4>Блог Jeisport</h4>

                <!-- block_item -->
                <?php if ($posts): ?>
                    <?php foreach ($posts as $post): ?>
                        <div class="block_item">
                            <a href="/blog/<?= $post['url'] ?>" class="block_img_wrapper"><img src="/images/blog/<?= $post['image'] ?>" alt=""></a>
                            <div class="block_item_content">
                                <h5><a href="/blog/<?= $post['url'] ?>"><?= $post['name'] ?></a></h5>
                                <p><?= mb_strimwidth(strip_tags($post['text']), 0, 150, "..."); ?></p>
                                <div class="info_block">
                                    <a href="/blog/<?= $post['url'] ?>" class="views"><?= $post['views'] ?></a>
                                    <a href="/blog/<?= $post['url'] ?>" class="comments">12</a>
                                    <span><?= $post['date'] ?></span>
                                </div><!-- info_block -->
                            </div><!-- block_item_content -->
                        </div>
                    <?php endforeach; ?>
                    <?php
                else: echo 'Постов в базе не найдено!';
                endif;
                ?>
                <!-- /block_item -->

            </div><!-- blog -->
        </section>
        <?php if ($maintext): ?>
            <article>
                <p><?= $maintext ?></p>
            </article>
        <?php endif; ?>
    </div><!-- wrapper -->
</div>

<!--<div class="container">
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
                                <a href="/blog/<?= $post['url'] ?>" class="title"><?= $post['name'] ?></a>
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
</div>-->