<script src="http://api-maps.yandex.ru/1.1/index.xml" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {

        var map;
        ymaps.ready(function () {

            map = new YMaps.Map(YMaps.jQuery("#ya-block")[0]);

            // Устанавливает начальные параметры отображения карты: центр карты и коэффициент масштабирования
            var point = new YMaps.GeoPoint(<?= $point['coords'] ?>);
            map.setCenter(point, 10);
            map.addControl(new YMaps.TypeControl());
            map.addControl(new YMaps.ToolBar());
            map.addControl(new YMaps.Zoom());
            map.addControl(new YMaps.ScaleLine());

            var placemark = new YMaps.Placemark(point);
            placemark.name = "<?= $point['name'] ?>";
            map.addOverlay(placemark);
        });

        // Создает обработчик события window.onLoad
        // YMaps.jQuery(function () {
        // Создает экземпляр карты и привязывает его к созданному контейнеру

// 	    })
// $("#point-map").addClass("active");

        $(".show-map").bind("click", function () {
            $("#point-map").toggleClass("active");
            if ($(this).html() == 'Скрыть карту') {
                $(this).html('Показать карту');
            } else {
                $(this).html('Скрыть карту');
            }
        });

    });
</script>
<div style="background: #fafafa;">
    <div class="container">
        <div class="main-container" style="background: #fafafa;">
            <div class="breadcrumbs">
                <ul>
                    <li><span><a href="/">Главная</a></span></li>
                    <li><span><a href="/<?= $category['url'] ?>"><?= $category['name'] ?></a></span></li>
                    <li><span><a href="/<?= $category['url'] ?>/<?= $sport['url'] ?>"><?= $sport['name'] ?></a></span></li>
                    <li><span><?= $point['name'] ?></span></li>
                </ul>
            </div>
            <div class="sport-point-page">
                <h1><?= $point['name'] ?></h1>
                <div class="point-map-block">
                    <a class="show-map" href="#">Показать карту</a>
                    <div id="point-map" style="overflow: hidden;">
                        <div id="ya-block" style="width: 100%; height: 400px;">

                        </div>
                    </div>
                </div>
                <div class="halls-block">
                    <p class="point-title">Спортивные залы клуба</p>
                    <div class="halls-items">
                        <?php foreach ($halls as $hall): ?>
                            <div class="hall-item">
                                <a class="halls" href="/images/points/halls/<?= $hall['image'] ?>">
                                    <img src="/getimage.php?key=images/points/halls/<?= $hall['image'] ?>&type=4" alt="">
                                </a>
                                <p class="title"><?= $hall['name'] ?></p>
                                <?php if (strlen($hall['name']) < 150): ?>
                                    <p class="desc"><?= mb_strimwidth(strip_tags($hall['description']), 0, 200, "..."); ?></p>
                                <?php else: ?>
                                    <p class="desc"><?= mb_strimwidth(strip_tags($hall['description']), 0, 100, "..."); ?></p>
                                <?php endif; ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="point-description-block">
                    <div class="point-images-block">
                        <a href="javascript:"><img src="/getimage.php?key=images/points/<?= $point['image'] ?>&type=5" alt=""></a>
                        <?php foreach ($images as $image): ?>
                            <a class="tour_images" href="/images/points/images/<?= $image['image'] ?>"><img src="/getimage.php?key=images/points/images/<?= $image['image'] ?>&type=6" alt=""></a>
                        <?php endforeach; ?>
                    </div>
                    <div class="point-contacts-block">
                        <div class="metro">
                            <?php if ($subway1): ?>
                                <div class="metro-item">
                                    <img src="/img/metro-img.png" alt="">
                                    <p> <?= $subway1['name'] . ' ' . $point['time1'] . ' мин' ?></p>
                                </div>
                            <?php endif; ?>
                            <?php if ($subway2): ?>
                                <div class="metro-item">
                                    <img src="/img/metro-img.png" alt="">
                                    <p> <?= $subway2['name'] . ' ' . $point['time2'] . ' мин' ?></p>
                                </div>
                            <?php endif; ?>
                        </div>
                        <p>Адрес: <?= $point['contacts'] ?></p>
                        <p>Телефон: <?= $point['phone'] ?></p>
                        <p>E-mail: <?= $point['email'] ?></p>
                        <p>Сайт: <?= $point['site'] ?></p>
                        <p>График работы: <?= $point['graphite'] ?></p>
                    </div>
                    <div class="point-form-block">
                        <p>Чтобы записаться на пробное посещение или задать вопросы менеджеру клуба закажи обратный звонок</p>
                        <a class="popup-form" href="#">Заказать обратный звонок</a>
                    </div>
                    <div class="point-inner-description-block">
                        <div class="point-inner-header">
                            <div class="social-bts">

                            </div>
                            <p class="point-title">Описание клуба</p>
                        </div>
                        <div class="point-inner-body">
                            <?= $point['text'] ?>
                        </div>
                    </div>
                </div>
                <div class="point-trainers-block">
                    <p class="point-title">Тренера клуба</p>
                    <div class="inner-trainers-block">
                        <ul class="trainers-items">
                            <?php foreach ($treners as $trener): ?>
                                <li>
                                    <a class="treners" href="/images/points/treners/<?= $trener['image'] ?>">
                                        <img src="/getimage.php?key=images/points/treners/<?= $trener['image'] ?>&type=7" alt=""/>
                                        <p><?= $trener['sname'] . ' ' . $trener['name'] ?></p>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
                <div class="point-schedule-block">
                    <p class="point-title">Цены и расписание клуба</p>
                    <div class="inner-schedule-block">
                        <ul>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                        </ul>
                        <ul>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                        </ul>
                        <ul>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                        </ul>
                        <ul>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                        </ul>
                        <ul>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                            <li>Йога 1600 руб.</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>