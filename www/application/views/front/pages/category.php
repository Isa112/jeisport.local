<div class="subcategory-block">
    <h1><?= $category['h1'] ?></h1>
    <div class="subcategory-items">
        <?php
        if ($sports) {
            foreach ($sports as $sport):
                ?>
                <a href="<?= '/' . $category['url'] . '/' . $sport['url'] ?>">
                    <div class="category-item-bg"></div>
                    <img src="images/sports/<?= $sport['image'] ?>" alt="<?= $sport['name'] ?>"/>
                    <p><?= $sport['name'] ?></p>
                </a>
                <?php
            endforeach;
        }else {
            echo 'Видов спорта в данной категории не найдено!';
        }
        ?>

    </div>
</div>
<div class="description-block">
    <h1><?= $category['h2'] ?></h1>
    <p><?= $category['text'] ?></p>
</div>
</div>
</div>