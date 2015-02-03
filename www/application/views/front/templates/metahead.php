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
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/slider.css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="/js/jquery-ui.min.js"></script>
        <script src="/js/jquery.flexslider.js"></script>
        <script type="text/javascript" src="/js/scripts.js"></script>
        <script type="text/javascript" src="/js/library.js"></script>
    </head>