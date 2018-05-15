function showBillingForm() {
	var div = document.getElementById("billing-form");
	div.style.display = 'block';
}

function hideBillingForm() {
	var div = document.getElementById("billing-form");
	div.style.display = 'none';
}

function changeRedCloseBtn() {
	var div = document.getElementById("closeBtn");
	div.src='images/button_close_red.svg';
}

function changeBlackCloseBtn() {
	var div = document.getElementById("closeBtn");
	div.src='images/button_close.svg';
}