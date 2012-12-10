alertify.confirm( "Are you sure you want to delete this client?", function (e) {
  if (e) {
    console.log('we clicked ok');
  }
  else  {
    console.log('we clicked cancel');
  }
 }

