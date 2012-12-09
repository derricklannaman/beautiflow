$(function(){
  $('#sign-in-dropdown').hide();
  $('#member-btn').click(reveal_drop);
  $('#close-btn').click(hide_dropped_form);
  $('#manage-client').hover(backlight_on, backlight_off);
  $('#manage-service').hover(backlight_on, backlight_off);
  $('#manage-profile').hover(backlight_on, backlight_off);
  $('#text-client-box').hide();
  $('#create_text').click(reveal_text_box);
  $('#control-plate-client').hover(text_light_on, text_light_off);
  $('#control-plate-service').hover(text_light_on1, text_light_off1);
  $('#control-plate-profile').hover(text_light_on2, text_light_off2);


});

function text_light_on(){
  $('#client-btn-text').css('color', '#FFF');
}
function text_light_off(){
  $('#client-btn-text').css('color', '#FF9E00');
}

function text_light_on1(){
  $('#service-btn-text').css('color', '#FFF');
}
function text_light_off1(){
  $('#service-btn-text').css('color', '#FF9E00');
}

function text_light_on2(){
  $('#profile-btn-text').css('color', '#FFF');
}
function text_light_off2(){
  $('#profile-btn-text').css('color', '#FF9E00');
}


function reveal_text_box(){
  $('#text-client-box').slideDown(800);
  }


function change_plate_text(){
  $('#control-plate-client').css('color', '#FFF');
}


function backlight_on(){
  $(this).css({'background-color': 'white',
               'text-shadow': '1px 1px 1px black'});
}

function backlight_off(){
  $(this).css({'background-color': '#FF9E00',
               'text-shadow': 'none'});
}


function reveal_drop(){
  $('#sign-in-dropdown').slideDown(500);
}

function hide_dropped_form(){
  $('#close-btn').slideUp(500);
}