<div class="main-filter-block">
    <div class="container">
        <div class="filter-block-inner">
            <form>
                <div class="filter-item">
                    <label>Выберите категорию</label>
                    <input type="text" name="category" value="<?= $category['name'] ?>"/>
                </div>
                <div class="filter-item">
                    <label>Выберите подкатегорию</label>
                    <input type="text" name="subcategory"/>
                </div>
                <div class="filter-item">
                    <label>Пропишите станцию метро</label>
                    <input type="text" name="metro"/>
                </div>
                <div class="filter-item" style="width: 230px;">
                    <input type="submit" value="Применить"/>
                    <input type="submit" value="Сбросить"/>
                </div>
            </form>
        </div>
    </div>
</div>