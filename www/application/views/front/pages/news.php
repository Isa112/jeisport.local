<script>
    $(document).ready(function () {
        $.ajax({
            url: '/news/views',
            type: "POST",
            dataType: "html",
            data: {
                id: <?= $new['id'] ?>
            },
            success: function (response) {
                console.log('Успех');
            },
            error: function (response) {
                console.log('Ошибка');
            }
        });
    });
</script>
<div class="container">
    <div class="main-container">
        <div class="breadcrumbs">
            <ul>
                <li><span><a href="/">Главная</a></span></li>
                <li><span><a href="/news">Новости</a></span></li>
                <li><span><?= $new['name'] ?></span></li>
            </ul>
        </div>
        <div class="news-page">
            <h1><?= $new['name'] ?></h1>
            <div class="desc">
                <span class="see"><?= $new['views'] ?></span><span class="date"><?= $new['date'] ?></span>
            </div>
            <div class="body">
                <img width="200px" src="/images/news/<?= $new['image'] ?>" alt="">
                <?= $new['text'] ?>
            </div>
            <div class="pluso" data-background="transparent" data-options="small,square,line,horizontal,counter,theme=04" data-services="facebook,twitter,vkontakte,odnoklassniki"></div>

            <div id="disqus_thread"></div>
            <script type="text/javascript">
                /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
                var disqus_shortname = 'jeisport-sport'; // required: replace example with your forum shortname

                /* * * DON'T EDIT BELOW THIS LINE * * */
                (function () {
                    var dsq = document.createElement('script');
                    dsq.type = 'text/javascript';
                    dsq.async = true;
                    dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
                    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                })();
            </script>
            <noscript>Please enable JavaScript to view the comments.</a></noscript>

        </div>
    </div>
</div>