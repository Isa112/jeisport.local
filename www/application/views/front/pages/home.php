<div class="content">
    <div class="wrapper">

        <div class="main_banner">
            <video autoplay="" loop="" muted="" class="bgvideo" id="bgvideo"><source src="video/video.mp4" type="video/mp4"></video>

            <div class="clear"></div><!-- clear -->

            <div class="main_banner_inner">

                <h1 style="padding-top: 40px;">Самая обширная база спортивных клубов Москвы!</h1>
                <div class="banner_form">
                    <h2>Подбери себе  спортивный клуб:</h2>

                    <form action="javascript:">
                        <div class="input-text">
                            <span>Выберите категорию</span>
                            <label for="">
                                <i class="select_open_1"></i>
                                <select id="select-1" placeholder="категория" value="категория">
                                    <?php
                                    foreach ($categories as $cat):
                                        ?>
                                        <option value="<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                                        <?php
                                    endforeach;
                                    ?>
                                </select>
                            </label>
                        </div>
                        <div class="input-text">
                            <span>Выберите вид спорта</span>
                            <label for="">
                                <i class="select_open_2"></i>
                                <select id="select-2" placeholder="подкатегория" value="подкатегория">
                                    <?php
                                    foreach ($sports as $cat):
                                        ?>
                                        <option value="<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                                        <?php
                                    endforeach;
                                    ?>
                                </select>
                            </label>
                        </div>
                        <div class="input-text input-text-3">
                            <span>Выберите станцию метро</span>
                            <label for="">
                                <i class="select_open_3"></i>
                                <select id="select-3" placeholder="метро" value="метро">
                                    <?php foreach ($subways as $cat): ?>
                                        <option value="<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                                    <?php endforeach; ?>
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
                        <a href="#" data-modal-id="#modal3" class="send_btn modal-open send_request">Отправить заявку</a><!-- send_btn -->
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
                <h4 style="cursor:pointer;" onclick="window.location = '/news/'">Новости Jeisport</h4>
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
                <h4 style="cursor:pointer;" onclick="window.location = '/blog/'">Блог Jeisport</h4>

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