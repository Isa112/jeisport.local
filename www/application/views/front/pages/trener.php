<h3>Тренер Фитнес-клуба <br> "<?= $point ?>"</h3>
<div class="trainer_block">
    <img src="/images/points/treners/<?= $trener['image'] ?>" alt="<?= $trener['name'] ?>">
    <h5><?= $trener['name'] ?> <?= $trener['sname'] ?></h5>
    <div class="clear"></div>
    <?php if ($trener['text']): ?>
        <h6>Квалификация:</h6>
        <span><?= $trener['text'] ?></span>
    <?php endif; ?>
    <div class="clear"></div>
</div>