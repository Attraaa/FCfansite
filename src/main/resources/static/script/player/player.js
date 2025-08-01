const heart = document.querySelector(".give_heart");

const give_heart = () => {
	console.log("dd");
	window.location.href = "/user/give_heart";
}

heart.addEventListener("click", give_heart);