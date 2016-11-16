var cat = document.body.querySelector("img");
cat.style.position = "absolute";

// var currentY = 0;
// var endY = window.innerHeight;
// var catDiagonal = function(){ //cat goes up and down but can't get it to work in conjuction
//   if ( currentY < endY ){      //with the catWalk to make the cat go diagonal on a random basis
//     endY = window.innerHeight - cat.height;
//     currentY += 0.7;
//   }else{
//     endY = 0;
//     currentY -= 0.7;
//   }
//   cat.style.top = currentY + "px";
// };

var currentX = 0;
var endX = window.innerWidth - cat.width;

var catWalk = function(){ //Cat walks left to right
  if ( currentX < endX ){
    endX = window.innerWidth - cat.width; //sets the end width to windnow width if going right
    currentX += 2;
    cat.style.transform = "scaleX(1)"; //if going right keeps cat image as is
  }else{
    endX = 0; //sets the end width to 0 if going left
    currentX -= 2;
    cat.style.transform = "scaleX(-1)" //if going left flips the cat image
  }
  cat.style.left = currentX + "px";
};

var catWalkID = window.setInterval(catWalk, 10);




