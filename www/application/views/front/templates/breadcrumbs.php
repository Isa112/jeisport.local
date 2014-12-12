<div class="container">
    <div class="main-container">
        <div class="breadcrumbs">
            <ul>
                <li><span><a href="/">Главная</a></span></li>
                <?php if ($stitle): ?>
                    <li><span><a href="/<?= $category['url'] ?>"><?= $category['name'] ?></a></span></li>
                <?php else: ?>
                    <li><span><?= $category['name'] ?></span></li>
                <?php endif; ?>
                <?php if ($stitle): ?>
                    <li><span><?= $stitle ?></span></li>
                <?php endif; ?>
            </ul>
        </div>