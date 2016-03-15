function validateForm() {
    var x = document.forms["EquipmentPage"]["equip_number"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
		
	var z = document.forms["EquipmentPage"]["equip_desc"].value;
    if (z == null || z == "") {
        alert("Telephone Number must be filled out");
        return false;
    }
	
	var s = document.forms["EquipmentPage"]["fix_date"].value;
    if (s == null || s == "") {
        alert("Address must be filled out");
        return false;
    }
	
	var y = document.forms["EquipmentPage"]["cost"].value;
    if (y == null || y == "") {
        alert("Email must be filled out");
        return false;
    }
	
}
