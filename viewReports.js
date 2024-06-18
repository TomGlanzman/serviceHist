/* viewReports.js - javaScript to support viewing text files by buttons */

function showPreFile(name){
    document.getElementById('preText').innerHTML = null;
//    document.getElementById('preErr').innerHTML = null;
    let file = new XMLHttpRequest();
    txtFilename=name+'.txt'
    console.log('preFilename = ' + txtFilename);
    file.open("GET", txtFilename, true);
    file.send()
    file.onreadystatechange = function() {
	if (this.readyState === 4 && this.status ===200){
	    document.getElementById('preText').textContent = this.responseText;
        }
    };

//    const url = getCurrentURL();
//    document.getElementById('preErr').textContent = url; 

}

/* Return the current page's URL */
function getCurrentURL(){
    return window.location.href
}

