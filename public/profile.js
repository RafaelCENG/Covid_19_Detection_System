document.getElementById('case').onclick = function() {
    if (confirm("Are you sure you are positive?") == true) {
      checkCase()
      console.log(current_user.username)
  
    } else {
      alert("You pressed Cancel!");
    }
  }

  function showConfirmBox() {
    document.getElementById("overlay").hidden = false;
  }
  function closeConfirmBox() {
    document.getElementById("overlay").hidden = true;
  }