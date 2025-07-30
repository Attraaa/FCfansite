const replace_password_btn = document.querySelector(".replace_password_btn");
const replace_password_div = document.querySelector(".replace_password_div");
const dim = document.querySelector(".dim");
const back_btn = document.querySelector(".back_btn");

const show_replace_password_div = () => {
    dim.classList.add("show");
    replace_password_div.classList.add("show");
}
const back = () => {
    dim.classList.remove("show");
    replace_password_div.classList.remove("show");
}

replace_password_btn.addEventListener("click", show_replace_password_div);
back_btn.addEventListener("click", back);