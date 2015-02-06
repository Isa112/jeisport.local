<h3 class="about_us_title points_title"><?= $sport['name'] ?></h3>

<ul class="points">
    <?php foreach ($points as $point): ?>
        <li>
            <img src="/images/points/<?= $point['image'] ?>" alt="<?= $point['name'] ?>">
            <h5><?= $point['name'] ?></h5>
            <div class="points_wrapper">
                <?php
                $subway1 = $this->points_model->get_subway_for_point_front($point['subway1_id']);
                $subway1_img = $subway1['image'];
                $subway1 = $subway1['name'];
                if ($subway1):
                    ?>
                    <span class="metro1" style="background: url(/getimage.php?key=images/subways/<?= $subway1_img ?>&type=9) 0 0 no-repeat;"><?php
                        if ($subway1) {
                            echo $subway1 . ' ' . $point['time1'] . ' мин';
                        }
                        ?></span>
                    <?php
                else:
                    echo '<span class="metro1">Нет</span>';
                endif;
                $subway2 = $this->points_model->get_subway_for_point_front($point['subway2_id']);
                $subway2_img = $subway2['image'];
                $subway2 = $subway2['name'];
                if ($subway2):
                    ?>
                    <span class="metro2" style="background: url(/getimage.php?key=images/subways/<?= $subway2_img ?>&type=9) 0 0 no-repeat;"><?php
                        if ($subway2) {
                            echo $subway2 . ' ' . $point['time2'] . ' мин';
                        }
                        ?></span>
                    <?php
                else:
                    echo '<span class="metro2">Нет</span>';
                endif;
                ?>
                <?php
                if ($point['contacts']):
                    ?>
                    <p>Адрес: <?= $point['contacts'] ?></p>
                    <?php
                endif;
                if ($point['phone']):
                    ?>
                    <p>Телефон: <?= $point['phone'] ?></p>
                    <?php
                endif;
                if ($point['email']):
                    ?>
                    <p>E-mail: <?= $point['email'] ?></p>
                    <?php
                endif;
                if ($point['site']):
                    ?>
                    <p>Сайт: <?= $point['site'] ?></p>
                    <?php
                endif;
                if ($point['graphite']):
                    ?>
                    <p>График работы: <?= $point['graphite'] ?></p>
                <?php endif; ?>
                <input type="button" value="Подробнее..." onclick="window.location = '/<?= $category['url'] . '/' . $sport['url'] . '/' . $point['url'] ?>/'">
            </div>
        </li>
    <?php endforeach; ?>
</ul>

<article>
    <p>Устали однообразно курсировать между домом и работой? Решили разбавить этот тандем яркой ноткой, занявшись своим телом и здоровьем, ведь  «в здоровом теле – здоровый дух»? А может, вы ищете спортивные секции для детей, поскольку осенью снижается физическая активность, столь необходимая  для полноценного развития ребенка? Тогда самое время сесть поудобнее и изучить самую актуальную и подробную информацию про спортивные клубы Москвы!  Здесь вы найдете самые разные спортивные клубы, которые могут быть расположены около вашего места работы или дома, а также спортивные секции, где будут  заниматься ваши дети. На сайте Jeisport.ru представлено огромное разнообразие спортивных клубов Москвы, среди которых вы найдете: Спортклубы и спортивные  школы, в которых проводятся занятия по единоборствам: кикбоксинг, бокс, боевое самбо, муай-тай (тайский бокс) и многие другие, Фитнесклубы – замечательная  возможность для прекрасных дам подтянуть фигуру и всегда выглядеть потрясающе: в нашем каталоге представлено большое разнообразие спортивных секций  по аква-аэробике, пилатесу, фитнесу, в том числе для молодых мам и беременных, а также тренажерные залы, Спортклубы с бассейнами – то, что нужно для полного  избавления от стрессов: в каталоге вы найдете бассейны по своему вкусу – крытые или открытые, Спортивные игры – раздел нашего сайта, который наверняка  заинтересует любителей оздоровиться и насладиться игрой в баскетбол, бадминтон, пляжный или классический волейбол, хоккей, пинг-понг, керлинг, гольф и,  конечно, футбол. К вашим услугам огромный выбор спортклубов, предлагающих посетителям поиграть в эти и другие спортивные игры, Танцы – для вашего удобства  все спортивные танцевальные секции сгруппированы по танцевальным направлениям: латина, go-go, R&B, бальные, клубные, хореография и многие другие;  здесь же вы найдете спортивные танцевальные секции для детей, Активный отдых – то, что нужно для полного расслабления и восстановления сил! В этой категории  любители острых ощущений и не только найдут информацию о парашютном спорте, велотрассах, роллердромах, скалодромах, скейтпарках, паркуре и полетах на  шаре в Москве. С нами выбор спортивного клуба или секции в Москве – сплошное удовольствие!</p>
</article>

</div><!-- wrapper -->
</div><!-- content -->


<!--<div class="points-block">
    <h1><?= $sport['name'] ?></h1>
    <div class="points-items">
<?php foreach ($points as $point): ?>
                                                                                                        <a href="/<?= $category['url'] . '/' . $sport['url'] . '/' . $point['url'] ?>">
                                                                                                            <div class="img">
                                                                                                                <img src="/images/points/<?= $point['image'] ?>" alt="">
                                                                                                                <p class="title"><?= $point['name'] ?></p>
                                                                                                            </div>
                                                                                                            <div class="desc">
                                                                                                                <div class="metro">
    <?php
    $subway1 = $this->points_model->get_subway_for_point_front($point['subway1_id']);
    $subway1 = $subway1['name'];
    if ($subway1):
        ?>
                                                                                                                                                                                                                    <div class="metro-item">
                                                                                                                                                                                                                        <img src="/img/metro-img.png" alt="">
                                                                                                                                                                                                                        <p><?php
        if ($subway1) {
            echo $subway1 . ' ' . $point['time1'] . ' мин';
        } else {
            echo 'Нет';
        }
        ?></p>
                                                                                                                                                                                                                    </div>
        <?php
    endif;
    $subway2 = $this->points_model->get_subway_for_point_front($point['subway2_id']);
    $subway2 = $subway2['name'];
    if ($subway2):
        ?>
                                                                                                                                                                                                                    <div class="metro-item">
                                                                                                                                                                                                                        <img src="/img/metro-img.png" alt="">
                                                                                                                                                                                                                        <p><?php
        if ($subway2) {
            echo $subway2 . ' ' . $point['time2'] . ' мин';
        } else {
            echo 'Нет';
        }
        ?></p>
                                                                                                                                                                                                                    </div>
    <?php endif; ?>
                                                                                                                </div>
                                                                                                                <div class="description">
    <?php
    if ($point['contacts']):
        ?>
                                                                                                                                                                                                                    <p>Адрес: <?= $point['contacts'] ?></p>
        <?php
    endif;
    if ($point['phone']):
        ?>
                                                                                                                                                                                                                    <p>Телефон: <?= $point['phone'] ?></p>
        <?php
    endif;
    if ($point['email']):
        ?>
                                                                                                                                                                                                                    <p>E-mail: <?= $point['email'] ?></p>
        <?php
    endif;
    if ($point['site']):
        ?>
                                                                                                                                                                                                                    <p>Сайт: <?= $point['site'] ?></p>
    <?php endif; ?>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </a>
<?php endforeach; ?>
    </div>
</div>
<div class="description-block">
<?php if ($sport): ?>
                                                                                                    <h1><?= $sport['name'] ?></h1>
                                                                                                    <p><?= $sport['text'] ?></p>
<?php endif; ?>
</div>
</div>
</div>-->