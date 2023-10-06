// add hovered class to selected list item
let list = document.querySelectorAll(".navigation li");

function activeLink() {
  list.forEach((item) => {
    item.classList.remove("hovered");
  });
  this.classList.add("hovered");
}

list.forEach((item) => item.addEventListener("mouseover", activeLink));

// Menu Toggle
let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".navigation");
let main = document.querySelector(".main");

toggle.onclick = function () {
  navigation.classList.toggle("active");
  main.classList.toggle("active");
};


let buttonSet = document.getElementById("btnSet1");
let editBtn = document.getElementById("editBtn");
let deleteBtn = document.getElementById("delete");
let saveBtnSet = document.getElementById("btnSet2");
let saveBtn = document.getElementById("save");
let cancelBtn = document.getElementById("Cancel");
let popup = document.getElementsByClassName("popup");
let Allinput = document.getElementsByClassName("form-control");
let background = document.getElementsByClassName("main-form");
let cancel = document.getElementById("No");

editBtn.onclick = function () {
  buttonSet.style.display = "none";
  saveBtnSet.style.display = "flex";
  //remove disabled attribute from all input
  for (let i = 0; i < Allinput.length; i++) {
    Allinput[i].removeAttribute("disabled")
  }
}

cancelBtn.onclick = function () {
  buttonSet.style.display = "flex";
  saveBtnSet.style.display = "none";
  //add disabled attribute to all input
  for (let i = 0; i < Allinput.length; i++) {
    Allinput[i].setAttribute("disabled", "disabled")
  }
  window.scrollTo(0, 0);

}


deleteBtn.onclick = function () {
  //add filter blur to background
  background[0].style.filter = "blur(5px)";
  popup[0].style.display = "flex";
}

cancel.onclick = function () {
  background[0].style.filter = "blur(0px)";
  popup[0].style.display = "none";
}

