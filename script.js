// JavaScript Document
let menubar = document.querySelector('#menu-bars')
let mynavbar = document.querySelector('.navbar');

menubar.onclick = () =>{
    menubar.classList.toggle('fa-times');
    mynavbar.classList.toggle('active');
}
