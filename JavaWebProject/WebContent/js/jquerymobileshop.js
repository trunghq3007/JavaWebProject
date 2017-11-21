
/**
 * @description: handle callback after doing something 
 * @author:Admin CMC Corporation
 * @create date:Nov 21, 2017
 * @modifier:Admin
 * @modifined date: Nov 21, 2017
 * @exception:
 * @returns
 */
function callbackAfterHide() {
	$(document).ready(function() {
		$("button").click(function() {
			$("p").hide(1000, function() {
				alert("The paragraph is now hidden");
			});
		});
	});
}
