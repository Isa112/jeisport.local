<div class="category-menu">
    <div class="wrapper">
        <form action="javascript:">
            <div class="input-text">
                <span>Выберите категорию</span>
                <label for="">
                    <i></i>
                    <select id="select-1" placeholder="категория" value="категория">
                        <?php
                        foreach ($categories as $cat):
                            ?>
                            <option value="<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                            <?php
                        endforeach;
                        ?>
                    </select>
                </label>
            </div>
            <div class="input-text">
                <span>Выберите вид спорта</span>
                <label for="">
                    <i></i>
                    <select id="select-2" placeholder="подкатегория" value="подкатегория">
                        <option value="" disabled style="display: none;">Выберите категорию...</option>
                    </select>
                </label>
            </div>
            <div class="input-text input-text-3">
                <span>Выберите станцию метро</span>
                <label for="">
                    <i></i>
                    <select id="select-3" placeholder="метро" value="метро">
                        <?php foreach ($subways as $cat): ?>
                            <option value="<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                        <?php endforeach; ?>
                    </select>
                </label>
            </div>
            <div class="input-submit">
                <input type="submit" value="Применить">
                <input type="submit" class="reset_btn" value="Сбросить">
            </div>
        </form>
    </div>
</div>