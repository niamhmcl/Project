

function formValidation()  
{  
var mem_name = document.forms["Members"]["member_name"].value;
if (mem_name == null || mem_name == "") {
        alert("Name must be filled out");
        return false;
    }
}
