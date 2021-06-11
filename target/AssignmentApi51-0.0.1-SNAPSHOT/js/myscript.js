
// allowed extensions
var allowedExtension = ['jpeg', 'jpg', 'png', 'jfif'];



/*
 Validate Selected File
*/
function validateFile(totalsize) {



	//get file selected by user
	var myfile = document.getElementById('formFile');

	// get extension
	var fileExtension = myfile.value.split('.').pop().toLowerCase();

	var isValidFile = false;
	
	// check for total file size
	if ((totalsize + myfile.files[0].size) > (1024 * 1024 * 10)) {
		alert('Total image size limit exceeded which is 10MB.');
		return isValidFile;
	}
	
	// check for single file size
	if (myfile.files[0].size > (1024 * 1024 * 1)) {
		alert('Please select a image less than 1MB');
		return isValidFile;
	}

	// check for image
	if (fileExtension == null || fileExtension == "") {
		alert('Please select a image.');
		return isValidFile;
	}

	// if proper image
	for (var index in allowedExtension) {

		if (fileExtension === allowedExtension[index]) {
			isValidFile = true;
			break;
		}
	}
	
	// if file not in allowed extensions
	if (!isValidFile) {
		alert('Allowed Extensions are : *.' + allowedExtension.join(', *.'));
	}

	return isValidFile;
}