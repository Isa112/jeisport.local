<div class="points-block">
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
</div>