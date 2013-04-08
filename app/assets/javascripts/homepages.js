window. Webistar = {
    Models: {},
    Collections: {},
    Views: {},
    Routers: {},
    init: function() {
        new  Webistar.Routers.HomepagesRouter();
        Backbone.history.start();
    }
};

$(document).ready(function() {
    return  Webistar.init();
});



$(document).ready(function() {
    $(".gallery").jCarouselLite({
        btnNext: ".next",
        btnPrev: ".prev",
        visible: 4
    });

    $('#coin-slider').coinslider({
        hoverPause: true,
        width: 720,
        height:260,
        navigation: true,
        delay: 5000,
        sph: 1,
        spw: 1
    });


});