<div class="content">
    <div class="wrapper">
        <ul class="breadcrumbs">
            <li><a href="/">Главная</a></li>
            <li><a href="/<?= $category['url'] ?>"><?= $category['name'] ?></a></li>
            <li><a href="/<?= $category['url'] ?>/<?= $sport['url'] ?>"><?= $sport['name'] ?></a></li>
            <li><a id="point_url" href="/<?= $category['url'] ?>/<?= $sport['url'] ?>/<?= $point['url'] ?>/"><?= $point['name'] ?></a></li>
        </ul>
        <div class="presentation">
            <div class="presentation_title">
                <h5><?= $point['name'] ?></h5>
                <a href="#section_1" class="plagination">Отзывы</a>
                <a href="#section_2" class="plagination">Прайс лист </a>
                <a href="#section_3" class="plagination">Видео</a>
                <a href="#section_4" class="plagination">Тренера</a>
            </div>
            <div class="presentation_adress">
                <h6><?= $point['contacts'] ?></h6>
                <p><?= $point['phone'] ?></p>
            </div>
            <div class="load_more">
                <a href="#">Показать на карте</a>
            </div>
        </div>

        <div class="presentation_content">
            <div class="left_side">
                <h4>Описание</h4>
                <?= $point['text'] ?>
            </div>
            <div class="right_side">
                <h4>Информация</h4>
                <?php if ($subway1['image']): ?>
                    <img src="/images/subways/<?= $subway1['image'] ?>" style="width: 19px; height: 18px; float:left; margin-right: 2px;">
                    <span class="metro1"><?= $subway1['name'] . ' ' . $point['time1'] . ' мин' ?></span>
                <?php else: ?>
                    <img src="/img/sample_icons/metro1.png" style="width: 19px; height: 18px; float:left; margin-right: 2px;">
                    <span class="metro1">Нет</span>
                <?php endif; ?>
                <?php if ($subway2['image']): ?>
                    <img src="/images/subways/<?= $subway2['image'] ?>" style="width: 19px; height: 18px; float:left; margin-right: 2px;">
                    <span class="metro1"><?= $subway2['name'] . ' ' . $point['time2'] . ' мин' ?></span>
                <?php else: ?>
                    <img src="/img/sample_icons/metro2.png" style="width: 19px; height: 18px; float:left; margin-right: 2px;">
                    <span class="metro2">Нет</span>
                <?php endif; ?>
                <div class="clear"></div>
                <?php if ($point['contacts']): ?>
                    <p>Адрес: <?= $point['contacts'] ?></p>
                <?php endif; ?>
                <?php if ($point['phone']): ?>
                    <p>Телефон: <?= $point['phone'] ?></p>
                <?php endif; ?>
                <?php if ($point['email']): ?>
                    <p>E-mail: <?= $point['email'] ?></p>
                <?php endif; ?>
                <?php if ($point['site']): ?>
                    <p>Сайт: <?= $point['site'] ?></p>
                <?php endif; ?>
                <?php if ($point['graphite']): ?>
                    <p>График работы: <?= $point['graphite'] ?></p>
                <?php endif; ?>
                <p>Цена: свыше 60 тыс. руб за год</p>
                <label for="">Вы владелец?</label>
                <div class="call_back">
                    <p>Чтобы записаться на пробное посещение или задать вопросы менеджеру клуба закажи обратный звонок</p>
                    <a href="javascript:" id="send_backcall" class="modal-open" data-modal-id="#modal5">Заказать обратный звонок</a>
                </div>
                <h4 id="section_2">Прайс лист</h4>
                <div id="tab">

                    <div>
                        <span>за год</span>
                        <div class="tab_content">
                            <span>65 000 руб.</span>
                            <p>Цены, приведённые на сайте, не окончательные, не являются публичной офертой и носят информационный характер. Администрация оставляет за собой право изменять цены. Вы можете уточнить стоимость по телефону.</p>
                        </div>
                    </div>

                    <div>
                        <span>за 6 мес.</span>
                        <div class="tab_content">
                            <span>55 000 руб.</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, cupiditate beatae. Tenetur sint voluptate quo!</p>
                        </div>
                    </div>

                    <div>
                        <span>за 1 мес.</span>
                        <div class="tab_content">
                            <span>35 000 руб.</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae aliquam dolorem dicta. Aliquid laboriosam enim, commodi quis, id iure. Iure reiciendis ex illo laboriosam deserunt doloribus aut repellat, recusandae maiores iste corrupti accusantium numquam quam illum optio. Vel, est, iure.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <h3 class="block-title presentation_title_h3" id="section_4">Тренеры</h3><!-- title -->

        <div class="flexslider">

            <div class="flex-viewport" style="overflow: hidden; position: relative;">
                <ul class="slides" style="width: 800%; -webkit-transition-duration: 0s; transition-duration: 0s; -webkit-transform: translate3d(-2000px, 0px, 0px); transform: translate3d(-2000px, 0px, 0px);">
                    <?php foreach ($treners as $trener): ?>
                        <li class="clone" aria-hidden="true" style="width: 1000px; float: left; display: block;">
                            <?php for ($i = 0; $i < 4; $i++): ?>
                                <?php if (isset($trener[$i])): ?>
                                    <div class="video_block">
                                        <a href="#" data-modal-id="#modal6" data-id="<?= $trener[$i]['id'] ?>" class="img_link modal-open">
                                            <img class="trener_image" src="/images/points/treners/<?= $trener[$i]['image'] ?>" alt="" draggable="false">
                                        </a>
                                        <a href="#" data-modal-id="#modal6" class="title_link modal-open"><?= $trener[$i]['name'] ?></a>
                                    </div>
                                <?php endif; ?>
                            <?php endfor; ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <ol class="flex-control-nav flex-control-paging"><li><a class="">1</a></li><li><a class="flex-active">2</a></li></ol><ul class="flex-direction-nav"><li><a class="flex-prev" href="#">Previous</a></li><li><a class="flex-next" href="#">Next</a></li></ul></div><!-- slider -->
        <?php if (strlen($point['youtube']) == 11): ?>
            <h3 class="block-title presentation_title_h3" id="section_3">Видео</h3><!-- title -->

            <div class="youtube">
                <iframe width="640" height="388" src="https://www.youtube.com/embed/<?= $point['youtube'] ?>" frameborder="0" allowfullscreen></iframe>
            </div>
        <?php endif; ?>

        <h3 class="block-title comments_title" id="section_1">Отзывы</h3><!-- title -->


        <div id="disqus_thread"></div>
        <script type="text/javascript">
            /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
            var disqus_shortname = 'jeisport-sport'; // required: replace example with your forum shortname

            /* * * DON'T EDIT BELOW THIS LINE * * */
            (function () {
                var dsq = document.createElement('script');
                dsq.type = 'text/javascript';
                dsq.async = true;
                dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
            })();
        </script>
        <noscript>Please enable JavaScript to view the comments.</a></noscript>


        <!--        <a href="" class="comments_in_presentation">22 Комментария</a>
                <div class="comments">
                    <h6>Дмитрий</h6>
                    <p>В этом виде спорта практически не существует каких-то возрастных ограничений. Вы можете привести в секцию ребенка или прийти сами даже со своими  родителями<a href="">Ответить</a></p>
                </div>
                <div class="comments">
                    <h6>Дмитрий</h6>
                    <p>В этом виде спорта практически не существует каких-то возрастных ограничений. Вы можете привести в секцию ребенка или прийти сами даже со своими  родителями<a href="">Ответить</a></p>
                </div>
                <div class="add_comment">
                    <h6>Добавьте новый комментарий</h6>
                    <p>В этом виде спорта практически не существует каких-то возрастны</p>
                    <input type="button" value="Добавить">
                </div>-->

    </div><!-- wrapper -->
</div>