viewAll()

function viewAll(){
    $.ajax({
      //AJAX type is "Post".
      type: "POST",
      //Data will be sent to "ajax.php".
      url: "/viewAll",
      datatype: 'json',
      //Data, that will be sent to "ajax.php".
      //data:  {name: current_user.username},
      //If result found, this function will be called.
      success: function (html) {
        
      }
    })
  }