
window.onscroll = function() {
	mobileProgressBar();
	desktopProgressBar();
};

function mobileProgressBar() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("mobileProgressBar").style.width = scrolled + "%";
}

function desktopProgressBar() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("DesktopProgressBar").style.width = scrolled + "%";
}

