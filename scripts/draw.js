function drawImageToCanvas() {
    let canvas = document.getElementById("c");

    let ctx = canvas.getContext("2d"); // The ctx means "context." It gives us access to all the drawing methods that we need for our Canvas ellement.

    const barn = new Image();
    barn.src = "/images/barn.jpg";
    barn.onload = function() {  
        ctx.drawImage(barn, 0, 0, 128,128);
    }

}

document.addEventListener("DOMContentLoaded", function() {
    drawImageToCanvas();
});
