function _to(element){
    $("html, body").animate({
        scrollTop: $("#" + element).offset().top
    }, 500);
}

function _comments(action, block, item, comments) {
    if (action == 'show') {
        block.removeClass("col-md-6");
        block.css("background", "white");
        block.css("border", "1px solid silver");
        block.css("padding-bottom", "15px");
        block.css("margin-top", "15px");
        block.addClass("col-md-12");
        item.addClass("col-md-6");
        comments.show(100);
    }
    if (action == 'hide') {
        comments.hide(100);
        item.removeClass("col-md-6");
        block.css("background", "transparent");
        block.css("border", "0px solid transparent");
        block.css("margin-top", "0");
        block.css("padding-bottom", "0");
        block.removeClass("col-md-12");
        block.addClass("col-md-6");
    }
}