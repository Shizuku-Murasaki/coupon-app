$(function () {
  var path = location.pathname
  if (path == "/posts/index") {
    $(".posts-index-tab").addClass("selectMenu")
  }
  else if (path == "/posts/new") {
    $(".new-post-tab").addClass("selectMenu")
  }
  else if (path == "/coupons/index") {
    $(".coupons-index-tab").addClass("selectMenu")
  }
});