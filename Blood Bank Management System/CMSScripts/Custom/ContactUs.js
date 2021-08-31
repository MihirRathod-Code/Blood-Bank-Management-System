//The process to add new contact forms is as follows. Create a new form in the Forms application, and take
//note of the classname of the div containing the entire form. Add a new entry to the contactFormList
//object, with an incremental number and the classname of the containing div. Add the form on the ContactUs
//page. Update the static html web part with the drop down list, and add a new <option> entry,
//with a matching value tag.

$(document).ready(function(){
  
  var contactFormList = {
    1: "HostBloodDrive", 2: "SendContact", 3: "Volunteer", 4: "ShareStory", 5: "Tour"  
  };
  // 0=No Form Selected, 1=HostBloodDrive, 2=SendContact, 3=Volunteer, 4=ShareStory, 5=Tour
  
  //Check for querystring, select appropriate form
  var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
  var selectedForm = 2;
  if (hashes[0].indexOf('Form') == 0) {
    selectedForm = hashes[0].substr(5,6);
  }
  
  $("#contactFormSelector").val(selectedForm);
  
  for (_y = 0; _y < _.size(contactFormList)+1; _y++) {
    if (selectedForm == _y) {
      $("."+contactFormList[_y]).show();
    } else {
      $("."+contactFormList[_y]).hide();
    }
  }
  
  $("#contactFormSelector").change(function () {
    var end = this.value;
        //jQuery("label[for='myValue']").html(end); //changes html of label with value of contactFormSelector
    for (_x = 0; _x < _.size(contactFormList)+1; _x++) {
      if (end == _x) {
        $("."+contactFormList[_x]).show();
        var url = $(window)[0].location.pathname + "?Form="+_x;
        window.location = url;
      } else {
        $("."+contactFormList[_x]).hide();
      }
    }
    //var url = $(window)[0].location.pathname + "?Form="+_x;
    //window.location = url;
//        var firstDropVal = $('#pick').val();
    });
  
  var value = $('#contactFormSelector').val();
  jQuery("label[for='myValue']").html(value);
  
  $('#accordion').accordion({

      collapsible: true,
      heightStyle: "content"
    
     
     
    });
  $('#exampleModal').on("shown.bs.modal", function() {$(".modal-body input")[0].focus();} )
  
  var myFunction = function openModal() {
    $("#zipModal").click();
  }
  document.openModal = myFunction;
  
  if ($('#firstTimeVisitor').text() == 'TRUE') {
      $("#zipModal").click();
  }
    
  if ($('#postSubmit').text() == 'TRUE') {
    if ($('#postSubmitGoodZip').text() == 'TRUE') {
      if ($('#postSubmitLStreamZip').text() == 'TRUE') {
        $("#postSubmitButton").click();
      } else {
      //$("#postSubmitButton").click();
      }
    } else {
      $("#zipModal").click();
    }
  } 
  

});