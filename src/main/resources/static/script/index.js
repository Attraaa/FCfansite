const header = document.getElementById("header");
const menu = document.querySelector(".menu_ul");
const sub_menu = document.querySelector(".sub_menu");
const dim = document.querySelector(".dim");

const profile = document.querySelector(".profile");
const profile_menu = document.querySelector(".profile_menu");

const close_btn = document.querySelector(".close_btn");
const dimLayer = document.querySelector(".dimLayer");
const history_popup = document.getElementById("historyPopup");

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
const closePopup = () => {
    dimLayer.classList.add("hidden");
	history_popup.classList.add("hidden");
	
	window.location.href = "/history_none";
	
	close_btn.removeEventListener("click", closePopup);
}

close_btn.addEventListener("click", closePopup);
