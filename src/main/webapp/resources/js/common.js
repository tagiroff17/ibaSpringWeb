/**
 * Created tagirov on 27.04.2017.
 */
document.addEventListener("DOMContentLoaded", function(event) {

    $("#add").click(function () {
        $(this).closest("form").attr("action", "/add");
    });
    $("#delete").click(function () {
        $(this).closest("form").attr("action", "/delete");
    });
});