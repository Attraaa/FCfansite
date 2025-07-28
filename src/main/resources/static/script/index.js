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