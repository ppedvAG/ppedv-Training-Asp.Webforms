function checkValidation() {
    $(".form-group").each(function () {
        $(this).has("span[style='visibility: visible;']").addClass("has-error");
        $(this).has("span[style='visibility: hidden;']").removeClass("has-error");
    });
}

setInterval(checkValidation, 600);