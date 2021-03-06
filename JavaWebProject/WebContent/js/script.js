
/**
 * @description: function validate all input in form
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function checkAll() {
	for (i = 0; i < document.fields.elements.length; i++) {
		var f = document.fields.elements[i];
		if (f.value == "") {
			alert("Please enter a value for Field ");
			f.style.borderColor = "#FF0000";
			f.focus();
			return false;
		}
	}
	return true;
}

/**
 * @description: function handle show img when choose file img
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function PreviewImage() {
	var oFReader = new FileReader();
	oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

	oFReader.onload = function(oFREvent) {
		document.getElementById("uploadPreview").src = oFREvent.target.result;
	};
};

/**
 * @description: function validate phone number
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function validPhone() {
	var phNum = document.fields.area.value + document.fields.pre.value
			+ document.fields.last.value;
	// Check for numbers only
	for (i = 0; i < phNum.length; i++) {
		if (phNum.charAt(i) < "0" || phNum.charAt(i) > "9") {
			alert("Please enter only numbers.");
			return false;
		}
	}
	// Check for 10 digits
	if (phNum.length < 10) {
		alert("Please enter your 10-digit phone number.");
		return false;
	}
	return true;
}
