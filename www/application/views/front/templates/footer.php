<footer>
    <div class="footer-inner-block">
        <div class="container">
            <div class="fb-block">
                <div class="fb-like-box" data-href="https://www.facebook.com/FacebookDevelopers" data-width="310" data-height="290" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
            </div>
            <div class="footer-category-block">
                <?php
                if ($categories):
                    foreach ($categories as $category):
                        $sports = $this->sports_model->get_sports_for_category_front($category['id']);
                        ?>
                        <div class="category-item-block">
                            <p><?= $category['name'] ?></p>
                            <ul>
                                <?php
                                if ($sports):
                                    foreach ($sports as $sport):
                                        ?>
                                        <li><a href="/<?= $category['url'] . '/' . $sport['url'] ?>"><?= $sport['name'] ?></a></li>
                                        <?php
                                    endforeach;
                                endif;
                                ?>
                            </ul>
                        </div>
                        <?php
                    endforeach;
                endif;
                ?>
                <div class="goog-link">
                    <p>Сайт создан компанией</p>
                    <a href="http://www.googstudio.com"><img src="/img/goog-logo.png" alt=""/></a>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-block">
        <div class="container">
            <p>© ООО «Жей Спорт» 2014. Все права защищены.<br>
                ООО «Жей Спорт»<br>
                119072, г. Москва ул. Домская, дом 14, корпус 2</p>
        </div>
    </div>
</footer>
</div>
</body>
</html>