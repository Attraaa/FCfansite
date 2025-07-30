const header = document.getElementById("header");
const menu = document.querySelector(".menu_ul");
const sub_menu = document.querySelector(".sub_menu");
const dim = document.querySelector(".dim");

const profile = document.querySelector(".profile");
const profile_menu = document.querySelector(".profile_menu");

menu.addEventListener("mouseover", ()=> {
    sub_menu.classList.add("show");  
    dim.classList.add("show");  
});
sub_menu.addEventListener("mouseout", ()=> {
    sub_menu.classList.remove("show");
    dim.classList.remove("show");
});

profile.addEventListener("mouseover", ()=> {
    profile_menu.classList.add("show");  
});
profile_menu.addEventListener("mouseout", ()=> {
    profile_menu.classList.remove("show");  

});

// 역사 팝업 닫기 버튼
function closePopup() {
    const popup = document.querySelector(".popup");
    const dim = document.querySelector(".dim");
    if (popup) popup.style.display = "none";
    if (dim) dim.style.display = "none";
}

function openPopup() {
	const popup = document.getElementById("historyPopup");
	const dim = document.getElementById("dimLayer");
	if (popup) popup.style.display = "block";
	if (dim) dim.style.display = "block";
}