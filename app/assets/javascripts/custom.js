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
  $('#close-text-box').hide();
  $('#create_text').click(show_close_button);
  $('#close-text-box').click(hide_text_box);
  $('#client-delete').hide();
  $('#confirm_deletion').click(delete_client);
  $('#confirm_client_added').click(client_added);
  $('a.btn.btn-danger').click(delete_client);

});

 // function delete_client(){
 //   alertify.alert( "Are you sure you want to delete this client?", function(){
 //    console.log('we clicked ok');
 //  });
 // }

 function delete_client(){
  alertify.confirm( "Are you sure you want to delete this client?", function () {
  if (e) {
    console.log('we clicked ok');

    $.ajax({
      type: "POST",
      url: "/stylists/",
      data: {}
    }).done(function( msg ) {
      console.log( msg );
    });

  }
  else  {
    console.log('we clicked cancel');
  }

 });

}




// function b2(){
//   alertify.log("hey", "warning");

// }
 function client_added(){
    // alert('yes');
   alertify.success("positive notification");

 }
// function b4(){
//   alertify.error("negative notication!");

// }



function hide_text_box(){
  $('#text-client-box').slideUp(500);
  $('#close-text-box').fadeOut(700);
}


function show_close_button(){
   $('#close-text-box').delay(200).fadeIn(800);
}

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