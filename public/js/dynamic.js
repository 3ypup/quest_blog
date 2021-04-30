$(".add").click(function() {
    $("form1 > p:first-child").clone(true).insertBefore("form1 > p:last-child");
    return false;
});

$(".remove").click(function() {
    $(this).parent().remove();
});
