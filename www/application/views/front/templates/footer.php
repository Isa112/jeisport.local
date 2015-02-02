<footer>
    <div class="header_wrapper">

        <div class="footer_logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
            <div class="social_icons">
                <a href="#" class="vk"></a>
                <a href="#" class="ok"></a>
                <a href="#" class="tw"></a>
                <a href="#" class="fc"></a>
            </div>
        </div>

        <div class="footer_navigation">
            <ul>
                <?php
                if ($categories):
                    foreach ($categories as $category):
                        $sports = $this->sports_model->get_sports_for_category_front($category['id']);
                        ?>
                        <li>
                            <h6><?= $category['name'] ?></h6>
                            <?php
                            if ($sports):
                                foreach ($sports as $sport):
                                    ?>
                                    <a href="/<?= $category['url'] . '/' . $sport['url'] ?>"><?= $sport['name'] ?></a>
                                    <?php
                                endforeach;
                            endif;
                            ?>
                        </li>
                        <?php
                    endforeach;
                endif;
                ?>
            </ul>
        </div>

        <div class="clear"></div>

        <div class="co">
            <p>© ООО «Жей Спорт» 2014. Все права защищены.</p>
            <p>ООО «Жей Спорт»</p>
            <p>119072, г. Москва ул. Домская, дом 14, корпус 2</p>
        </div>

        <a href="#" class="metrics"></a>

    </div>
</footer>

</body>
</html>