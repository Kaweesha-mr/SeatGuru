const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});


let password1 = document.getElementById("passInp_1");
let password2 = document.getElementById("passInp_2");
let password1Container = document.getElementById("Checkpass1");
let password2Container = document.getElementById("Checkpass2");



