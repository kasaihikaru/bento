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
//= require jquery.turbolinks
// = require jquery_ujs
// = require turbolinks
//= require bootstrap-sprockets
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



// 単語自動ボタン
$(document).on('turbolinks:load', function(){
var autobtn=$('#auto-words');
autobtn.click(function(){
  var englishsentence = $('#englishsentence').val();
  var words = englishsentence.split(" ");
  var array = $.grep(words, function(e){return e !== "a"
&& e !== "is"
&& e !== "this"
&& e !== "the"
&& e !== "be"
&& e !== "are"
&& e !== "doing"
&& e !== "am"
&& e !== "your"
&& e !== "of"
&& e !== "and"
&& e !== "to"
&& e !== "in"
&& e !== "he"
&& e !== "have"
&& e !== "it"
&& e !== "that"
&& e !== "for"
&& e !== "they"
&& e !== "I"
&& e !== "with"
&& e !== "as"
&& e !== "not"
&& e !== "on"
&& e !== "she"
&& e !== "at"
&& e !== "by"
&& e !== "this"
&& e !== "we"
&& e !== "you"
&& e !== "do"
&& e !== "but"
&& e !== "from"
&& e !== "or"
&& e !== "which"
&& e !== "one"
&& e !== "would"
&& e !== "all"
&& e !== "will"
&& e !== "there"
&& e !== "say"
&& e !== "who"
&& e !== "make"
&& e !== "when"
&& e !== "can"
&& e !== "more"
&& e !== "if"
&& e !== "no"
&& e !== "man"
&& e !== "out"
&& e !== "other"
&& e !== "so"
&& e !== "what"
&& e !== "time"
&& e !== "up"
&& e !== "go"
&& e !== "about"
&& e !== "than"
&& e !== "into"
&& e !== "could"
&& e !== "only"
&& e !== "new"
&& e !== "year"
&& e !== "some"
&& e !== "take"
&& e !== "come"
&& e !== "these"
&& e !== "know"
&& e !== "see"
&& e !== "use"
&& e !== "get"
&& e !== "like"
&& e !== "then"
&& e !== "first"
&& e !== "any"
&& e !== "work"
&& e !== "now"
&& e !== "may"
&& e !== "such"
&& e !== "give"
&& e !== "over"
&& e !== "think"
&& e !== "most"
&& e !== "even"
&& e !== "find"
&& e !== "day"
&& e !== "also"
&& e !== "after"
&& e !== "way"
&& e !== "many"
&& e !== "must"
&& e !== "look"
&& e !== "before"
&& e !== "great"
&& e !== "back"
&& e !== "through"
&& e !== "long"
&& e !== "where"
&& e !== "much"
&& e !== "should"
&& e !== "well"
&& e !== "people"
&& e !== "down"
&& e !== "own"
&& e !== "just"
&& e !== "because"
&& e !== "good"
&& e !== "each"
&& e !== "those"
&& e !== "feel"
&& e !== "seem"
&& e !== "how"
&& e !== "high"
&& e !== "too"
&& e !== "place"
&& e !== "little"
&& e !== "world"
&& e !== "very"
&& e !== "still"
&& e !== "hand"
&& e !== "old"
&& e !== "life"
&& e !== "tell"
&& e !== "write"
&& e !== "become"
&& e !== "here"
&& e !== "show"
&& e !== "house"
&& e !== "both"
&& e !== "between"
&& e !== "another "
&& e !== "want"
&& e !== "form"
&& e !== "off"
&& e !== "few"


;});
  $.each(array,function(i,word){
    var target = '#sentence_words_attributes_' +i+ '_en';
    $(target).val(word);
  });

})});