<!--<div class="content">
   <div class="wrapper">

<ul class="breadcrumbs">
   <li><a href="#">Главная</a></li>
   <li><a href="#">Единоборства</a></li>
</ul> breadcrumbs -->

<div class="category-content">
    <h3 class="about_us_title category_title"><?= $category['h1'] ?></h3>
    <div class="categories categories_2">
        <ul>
            <!-- li -->
            <?php
            if ($sports) {
                foreach ($sports as $sport):
                    ?>
                    <li class="no_hover no_bg">
                        <a href="<?= '/' . $category['url'] . '/' . $sport['url'] ?>/">
                            <div class="visible_block">
                                <h6><?= $sport['name'] ?></h6>
                            </div>
                            <img src="/images/sports/<?= $sport['image'] ?>" alt="<?= $sport['name'] ?>">
                        </a>
                    </li>
                    <?php
                endforeach;
            }else {
                echo 'Видов спорта в данной категории не найдено!';
            }
            ?>
            <!-- /li -->
        </ul>
    </div><!-- /categories -->
</div>

<article>
    <p><?= $category['text'] ?></p>
</article>


</div><!-- wrapper -->
</div>