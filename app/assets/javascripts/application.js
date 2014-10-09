// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {
    $('#proposal_summary').change(function(e) {
        //var wordCount = e.val().split(' ');

        var text = $('#proposal_summary').val();
        var wordCount = text.split(' ');

        if (wordCount.length > 50) {
            //.val(text)
            wordCount.splice(50);
            $('#proposal_summary').val(wordCount.join(" "));
        }

    });
});
