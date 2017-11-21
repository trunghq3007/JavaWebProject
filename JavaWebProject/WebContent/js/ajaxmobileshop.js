/**
 * 
 */

/**
 * @description: asynchronous ajax responseText
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function loadDoc() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("demo").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", "ajax_info.txt", true);
	xhttp.send();
}

/**
 * @description: asynchronous ajax responseXML
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function loadDocResponseXML() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			xmlDoc = xhttp.responseXML;
			txt = "";
			x = xmlDoc.getElementsByTagName("ARTIST");
			for (i = 0; i < x.length; i++) {
				txt += x[i].childNodes[0].nodeValue + "<br>";
			}
			document.getElementById("demo").innerHTML = txt;
		}
	};

	xhttp.open("GET", "cd_catalog.xml", true);
	xhttp.send();
}

/**
 * @description: use jquery ajax
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function loadDocUseAjaxJqueryResponeText() {
	jQuery(document).ready(function() {
		jQuery("#ajaxButton").click(function() {
			jQuery.ajax({
				type : "POST",
				url : "ajax_info.txt",
				success : function(txt) {
					// alert("success");
					jQuery("#responseDiv").html(txt);
				}
			});
		});
	});

}

/**
 * @description: use jquery ajax handle click to change content div #responseDiv
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function loadDocUseAjaxJqueryResponeHTML() {
	jQuery(document).ready(function() {
		jQuery("#ajaxButtonResponseHTML").click(function() {
			jQuery.ajax({
				type : "POST",
				url : "cookies.jsp",
				success : function(html) {
					// alert("success");
					jQuery("#responseDiv").html(html);
				}
			});
		});
	});

}
