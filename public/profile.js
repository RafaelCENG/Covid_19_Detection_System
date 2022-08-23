document.getElementById("change_username").onclick = function () {
  if (confirm("Want to change username?") == true) {
    changeUsername()
  } else {
    alert("You pressed Cancel!")
  }
}

function showConfirmBox() {
  document.getElementById("overlay").hidden = false
}
function closeConfirmBox() {
  document.getElementById("overlay").hidden = true
}

//Function to change the username
function changeUsername() {
  var new_username = prompt("Enter the new username", "")
  dataSet = [current_user.id, new_username]
  if (new_username != null) {
    $.ajax({
      //AJAX type is "Post".
      type: "POST",
      //Data will be sent to "ajax.php".
      url: "/new_username",
      contentType: "application/json",
      datatype: "json",
      //Data, that will be sent to "ajax.php".
      data: JSON.stringify({ dataSet: dataSet }),
      //If result found, this function will be called.
      success: function (html) {
        alert("Username changed successful")
      },
    })
  } else {
    alert("Type the new username")
  }
}

//Function to check current password and change it to the new one
function changePassword() {
  let current_pass = document.getElementById("currPass").value
  let new_pass = document.getElementById("newPass").value
  console.log(current_pass, new_pass)
  if (current_pass != null && new_pass != null) {
    dataSet = [current_user.id, current_pass, new_pass]
    $.ajax({
      //AJAX type is "Post".
      type: "POST",
      //Data will be sent to "ajax.php".
      url: "/checkPass",
      contentType: "application/json",
      datatype: "json",
      //Data, that will be sent to "ajax.php".
      data: JSON.stringify({ dataSet: dataSet }),
      //If result found, this function will be called.
      success: function (html) {
        changePass(dataSet)
      },
    })
  }
  console.log("Test")
  document.getElementById("currPass").value = ""
  document.getElementById("newPass").value = ""
}

function changePass(dataSet) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/changePass",
    contentType: "application/json",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: JSON.stringify({ dataSet: dataSet }),
    //If result found, this function will be called.
    success: function (html) {
      alert("Password change successful")
    },
  })
}
