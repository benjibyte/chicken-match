let canvas = document.getElementById("canvas");
let context = canvas.getContext("2d"); // context = 2D dimension

const chicken = new Image();
chicken = document.getElementById("whiteChicken1");



let windowHeight = window.innerHeight;
let windowWidth = window.innerWidth;

canvas.width = windowWidth;
canvas.height = windowHeight;

canvas.style.background = "#1e032eff";

context.drawImage(chicken, 100, 100);