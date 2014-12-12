<!DOCTYPE html>
<html>
    <head>
        <title><?php
            if (isset($point)) {
                echo $category['name'] . ' | ' . $sport['name'] . ' | ' . $stitle;
            } else {
                if (isset($sport)) {
                    echo $category['name'] . ' | ' . $stitle;
                } else {
                    if (isset($category['name'])) {
                        echo $category['name'];
                    } else {
                        echo $title;
                    }
                }
            }
            ?></title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <link rel="stylesheet" href="/scss/style.css">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/colorbox/colorbox.css">
        
        <script src="/js/jquery-2.1.1.min.js"></script>
        <script src="/js/jquery-ui.min.js"></script>
        <script src="/js/library.js"></script>
        <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
        <script src="/js/jquery.bxslider.js"></script>
        <script src="/js/script.js"></script>
        <script src="/colorbox/jquery.colorbox-min.js"></script>
        <script>
            jQuery(document).ready(function () {
                jQuery('a#anketa').colorbox({
                    opacity: 0.5,
                    height: "700"
                });
                $('a.treners').colorbox({
                    rel: 'treners'
                })
                $('a.halls').colorbox({
                    rel: 'halls'
                })
                $('a.tour_images').colorbox({
                    rel: 'tour_images'
                })
            });
        </script>

    <div id="fb-root"></div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "https://connect.facebook.net/en_US/all.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <script type="text/javascript">(function () {
            if (window.pluso)
                if (typeof window.pluso.start == "function")
                    return;
            if (window.ifpluso == undefined) {
                window.ifpluso = 1;
                var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                s.type = 'text/javascript';
                s.charset = 'UTF-8';
                s.async = true;
                s.src = ('https:' == window.location.protocol ? 'https' : 'http') + '://share.pluso.ru/pluso-like.js';
                var h = d[g]('body')[0];
                h.appendChild(s);
            }
        })();
    </script>
</head>