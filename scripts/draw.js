let canvas = document.getElementById("gameCanvas");
let ctx = canvas.getContext("2d");

// get spriteSheet image and define i
const spriteSheet = new Image();
spriteSheet.src = 'images/spritesheet.png';

// Get the tile size so we loop through the sprites properly
const tileSize = 16;
const tileCol = 7;
const tileRow = 5;

let tileMap = [
  0,1,2,2,2,3,4,
  5,6,21,21,21,8,9,
  5,6,21,21,21,8,9,
  5,6,21,21,21,8,9,
  10,11,12,12,12,13,14
]


// Game loop (Essentially a recursive function)
const gameLoop = () => {

  console.log("game is running"); // log to the browser that the game is running



  window.requestAnimationFrame(gameLoop); // must be the last line in the function/loop
};


// Initialize Game Loop
window.onload = () => {
  window.requestAnimationFrame(gameLoop);
};


// Draw the tile map based on the tileMap array and For Loop through each row,
// and column in each row (2 for loops) to draw each image from the spriteSheet.
const drawTileMap = () => {
  for (let eachRow = 0; eachRow < tileRows; eachRow++) { // Row For loop  (tileRows was defined earlier as how tall/rows we want for our game size)
 // Column For Loop (the above with tileRows, also applies to tileCol, but we have more tile col, so the game screen is wider)

    for (let eachCol = 0; eachCol < tileCol; eachCol++) {

    }
  };
};
