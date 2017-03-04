// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require jquery
// = require jquery_ujs
//= require bootstrap-sprockets
// = require turbolinks
//= require jquery.turbolinks
//= require jquery.infinitescroll.min
//= require_tree .


// スムーズスクロールのためのjquery
// $(function(){
// var topBtn=$('#pageTop');

// topBtn.click(function(){
//   $('body,html').animate({
//   scrollTop: 0},500);
//   return false;
// });

// });


  $("#infinite-all-sentences .page").infinitescroll({
      loading: {
        img:     "http://www.mytreedb.com/uploads/mytreedb/loader/ajax_loader_blue_48.gif",
        msgText: "loading..."
      },
      navSelector: "nav.pagination",
      nextSelector: "nav.pagination a[rel=next]",
      itemSelector: "#infinite-all-sentences div.infinite-all-sentences" /* このDOMに差し掛かった時に、次のページのロードが始まる*/
  });