$('.message a').click(function () {
    $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
});
$(document).ready(function () {

    $(".topgo").click(function () {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });


    var produtoid;
    $(".product-card").click(function () {
        produtoid = this.val;
    });

    $(function () {

        var $vsliderboxes = $('#vsliderboxes'),
            $vslidernav = $('#vslidernav'),
            boxHeight = $vsliderboxes.height(),
            current_index = 0;

        function clickslide() {

            //stop the slideshow for a bit so we don't get two animations too close together
            clearInterval(intervalTimer);
            clearTimeout(timeoutTimer);
            timeoutTimer = setTimeout(function () {
                intervalTimer = window.setInterval(autoslide, 4000);
            }, 2500);

            //first get the index of the clicked link
            var index = $(this).index();

            //set the current_index variable to keep track of the current index
            current_index = index;

            //then animate
            $vsliderboxes.children().stop().animate({
                top: (boxHeight * index * -1)
            }, 500);
        }

        function autoslide() {
            current_index++;
            //loop to beginning if necessary
            if (current_index >= $vsliderboxes.children().children().length) {
                current_index = 0;
            }
            $vslidernav.find('a').eq(current_index).trigger('click');
        }

        $vslidernav.find('a').click(clickslide);

        var intervalTimer = window.setInterval(autoslide, 2000),
            timeoutTimer = null;

    });

    $(".seemore").click(function () {
        $('html,body').animate({
            scrollTop: $(".containertecheader").offset().top
        },
            'slow');
    });
    
});
