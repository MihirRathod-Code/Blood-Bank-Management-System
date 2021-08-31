checkButton = function(val) {
  var submit = document.getElementById("buttonHHQContinue");
  if (val.checked == true) {
    submit.disabled = false;
    }
  else {
    submit.disabled = true;
    }
  }
  
  chkButton = function(val) {
  var submit = document.getElementById("buttonchkContinue");
  if (val.checked == true) {
    submit.disabled = false;
    }
  else {
    submit.disabled = true;
    }
  }