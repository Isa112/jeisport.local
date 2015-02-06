
$(window).load(function () {
    $('.flexslider').flexslider({
        animation: "slide",
        start: function (slider) {
            $('#window').css({'display': 'none', 'left': 0});
            $('body').removeClass('loading');
        }
    });
});

function show(state) {
    document.getElementById('modal-wrapper').style.display = state;
    document.getElementById('bg').style.display = state;
    if (state == 'block') {
        initScroll();
    }
}


(function (cash) {
    $(window).load(function () {

        $('.modal-open').on('click', function () {
            var modal_id = $(this).data('modal-id');
            $(modal_id).fadeIn();
            return false;
        });
        $('.modal-wrapper .bg, .modal-wrapper .close-modal').on('click', function () {
            $(this).parents('.modal-wrapper').fadeOut();
            return false;
        });

        $('.plagination').click(function (event) {
            $('html,body').animate({scrollTop: $($(this).attr('href')).offset().top + "px"}, 1000);
            event.preventDefault();
        });

        // $('[data-tooltip]').hover(function(){ var t = $(this).data('tooltip');$(this).data('tooltip',$(this).html());$(this).html(t);}, function(){var t = $(this).data('tooltip');$(this).data('tooltip',$(this).html());$(this).html(t);});

    });
})(jQuery);

var openSelect = function (selector) {
    var element = $(selector)[0], worked = false;
    if (document.createEvent) { // all browsers
        var e = document.createEvent("MouseEvents");
        e.initMouseEvent("mousedown", true, true, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
        worked = element.dispatchEvent(e);
    } else if (element.fireEvent) { // ie
        worked = element.fireEvent("onmousedown");
    }
    if (!worked) { // unknown browser / error
        alert("It didn't worked in your browser.");
    }
}
function sendbid() {
    $.ajax({
        url: '/sendrequest/save',
        type: "POST",
        dataType: "html",
        data: $('#request_res').find('form').serialize(),
        success: function (response) {
            document.getElementById('request_res').innerHTML = response;
        },
        error: function (response) {
            document.getElementById('request_res').innerHTML = "Ошибка при отправке формы";
        }
    });
    return false;
}function form_sendbid() {
    $.ajax({
        url: '/sendrequest',
        type: "POST",
        dataType: "html",
        success: function (response) {
            document.getElementById('request_res').innerHTML = response;
        },
        error: function (response) {
            document.getElementById('request_res').innerHTML = "Ошибка при отправке формы";
        }
    });
    return false;
}
$(function () { // when DOM is ready
    // open .select element
    $('.select_open_1').click(function () {
        openSelect('#select-1');
    });

    $('.select_open_2').click(function () {
        openSelect('#select-2');
    });

    $('.select_open_3').click(function () {
        openSelect('#select-3');
    });

    $('.send_request').click(function () {
        form_sendbid();
    });

});