$(function(){
    // Color in MEMORY
    $("#stylechooser .demoList a").click(function() {
        var color_mem = $(this).attr("data-value");
        $.cookie("special_color", color_mem);
    });

    if($.cookie("special_color"))
    {
        $("body").removeClass()
        $('#stylechooser .demoList a').removeClass('demoActive');
        $('#stylechooser .demoList a[data-value='+ $.cookie("special_color") +']').addClass('demoActive');
        $("body").addClass($.cookie("special_color"));
    }
    else{
        $("body").addClass("default");
    }    
})