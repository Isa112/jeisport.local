$(document).ready(function(){

    $('.video-items').bxSlider({
        useCSS: false,
        auto: true,
        pager: false,
        controls: true,
        minSlides: 4,
        maxSlides: 4,
        slideWidth: 185,
        slideMargin: 55
    });

    $('.trainers-items').bxSlider({
        useCSS: false,
        auto: true,
        pager: false,
        controls: true,
        minSlides: 4,
        maxSlides: 4,
        slideWidth: 185,
        slideMargin: 55
    });

    $('.banner-items').bxSlider({
        mode: 'fade',
        useCSS: false,
        auto: true,
        pager: false,
        controls: false
    });

    $('.news-banners').bxSlider({
        mode: 'fade',
        useCSS: false,
        auto: true,
        pager: false,
        controls: false
    });

//    var myMap;
//
//// Дождёмся загрузки API и готовности DOM.
//    ymaps.ready(init);
//
//    function init () {
//        //Создание экземпляра карты и его привязка к контейнеру с
//        //заданным id ("map").
//        myMap = new ymaps.Map('map-block', {
//            // При инициализации карты обязательно нужно указать
//            // её центр и коэффициент масштабирования.
//            center: [55.76, 37.64], // Москва
//            zoom: 10
//        });
//    }

});
