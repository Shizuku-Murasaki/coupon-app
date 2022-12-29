$(function () {
  if ($("#flash").is(":visible")) {
    $("#flash").addClass("showUpDown")
    setTimeout(function () {
      $("#flash.showUpDown").toggleClass("showUpDown");
    }, 3000);
  }
});