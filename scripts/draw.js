let canvas = document.getElementById("gameCanvas");
let ctx = canvas.getContext("2d");

// get spriteSheet image and define i
const spriteSheet = new Image();
spriteSheet.src = 'images/spritesheet.png';

// Get the tile size so we loop through the sprites properly
const tileSize = 16;
const tileCol = 7;
const tileRow = 5;

// Decide what each Tile or Sprite is and what number on the tileMap array it corresponds to.
const spriteSheetLookUp = {
  barnCornerTopLeft: 0, // 0 -> 14 are Barn related tiles
  barnTrussTopLeft: 1,
  barnRoof: 2,
  barnTrussTopRight: 3,
  barnCornerTopRight: 4,
  barnWallLeft: 5,
  barnSideLeft: 6,
  barnRoom: 7,
  barnSideRight: 8,
  barnWallRight: 9,
  barnCornerBottomLeft: 10,
  barnFootBottomLeft: 11,
  barnFloor: 12,
  barnFootBottomRight: 13,
  barnCornerBottomRight: 14,
  chickenWhite: 15, // Chickens, Egg, and Mouse (Animals) 15 -> 18
  chickenBrown: 16,
  chickenEgg: 17,
  mouse: 18,
  empty: 19, // Other sprites... 19 -> 24
  cardFace: 20, // cardFace is the card in it's "revealed" state after it has been turned over.
  cardBack: 21, // cardBack is when the card is "hidden" or "not yet turned over"
  popFrame1: 22,
  popFrame2: 23,
  popFrame3 24
}

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

    for (let eachCol = 0; eachCol < tileCol; eachCol++) { // Column For Loop (the above with tileRows, also applies to tileCol, but we have more tile col, so the game screen is wider)

      let arrayMapIndex = eachRow * tileCol + eachCol; // We have to calculate this each time because it's only used in one scope, rather than just use a counter variable (it must be tileCol since the board isn't a square)
      

      // replace this with the lookUp conditional (NOT A BIG IF STATEMENTM, duck.ai or google "lookup statements in js for a canvas game with spritesheet" if you forgot)
      // then inside the conditional statement, have it be like .... if arrayMapIndex === 0 then do "barnCornerBottomLeft" at it's position and so on.
      // USING context.drawImage() with all optional arguements 

    }
  };
};
