<script>
    $(document).ready(function () {
        $.ajax({
            url: '/blog/views',
            type: "POST",
            dataType: "html",
            data: {
                id: <?= $blog['id'] ?>
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
                <li><span><a href="/blog">Блог</a></span></li>
                <li><span><?= $blog['name'] ?></span></li>
            </ul>
        </div>
        <div class="news-page">
            <h1><?= $blog['name'] ?></h1>
            <div class="desc">
                <span class="see"><?= $blog['views'] ?></span><span class="date"><?= $blog['date'] ?></span>
            </div>
            <div class="body">
                <img width="200px" src="/images/blog/<?= $blog['image'] ?>" alt="">
                <?= $blog['text'] ?>
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
            <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

        </div>
    </div>
</div>