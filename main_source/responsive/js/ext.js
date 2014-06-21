function doFirst(){
	var x=document.getElementById('canvas');
	canvas = x.getContext('2d');
	canvas.strokeRect(10,10,10,20);
}
window.addEventListener("load",doFirst,false);