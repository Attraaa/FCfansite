const register_form = document.getElementById("register_form");
const register_div1 = document.querySelector(".register_div");
const register_div2 = document.querySelector(".register_div2");

const next_btn = document.querySelector(".next");
const submit_btn = document.querySelector(".submit");

const userID = document.getElementById("userID");
const password = document.getElementById("password");
const again_password = document.getElementById("again_password");
const nickname = document.getElementById("nickname");
const birth = document.getElementById("birth");

const next = () => {
    if(userID.value === "") {
        alert("아이디를 입력해주세요.");
        return;
    }
    if(password.value === "") {
        alert("비밀번호를 입력해주세요.");
        return;
    }
    if(again_password.value === "") {
        alert("비밀번호를 한번 더 입력해주세요.");
        return;
    }
    if(password.value !== again_password.value) {
        alert("비밀번호가 일치하지 않습니다.");
        return;
    }
    register_div1.classList.add("hidden");
    register_div2.classList.add("show");
    next_btn.removeEventListener("click", next);
};

const submit = () => {
    if(nickname.value === "") {
        alert("닉네임을 입력해주세요.");
        return;
    }
    if(birth.value === "") {
        alert("생년월일을 입력해주세요.");
        return;
    }
    next_btn.removeEventListener("click", submit);
    register_form.submit();
};

next_btn.addEventListener("click", next);
submit_btn.addEventListener("click", submit);