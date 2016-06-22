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
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    // animate alerts
    $('.alert-msg').animate({
        opacity: .7,
        top: '0px',
    }, 800, function() {
        //$(this).hide();
    }); 
    // remove alert
    $('.alert-msg').click(function() {
        $(this).animate({
            opacity: 0,
            top: '-200px',
        }, 500, function() {
            $(this).hide();
        });
    });
    
    // panel left controll
    $('#toggle-panel').click(function() {
        if ($('.left-panel').css("left") == "0px") {
            $('.left-panel').animate({ left: '-200px' }, 300, function() {});  
        } else {
            $('.left-panel').animate({ left: '0px' }, 300, function() {});  
        }
    });
    
});