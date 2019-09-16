//At least one example of mouse interaction
//At least one for loop (for(int i; i < 10; i++)….)
//At least one conditional statement (if/then)
//Post a link to your GitHub repository and one image from your sketch to the blog.


PImage scooby;

float scoobyX;
float scoobyY;


float scoobyXspeed;
float scoobyYspeed;


int score;


float r; 
float g;
float b;


void setup(){
size(1200, 800);

scooby = loadImage("scooby2.jpg");

r = random(255);
g = random(255);
b = random(255);

//for(int i = 0; i< 100; i++){
// image(furby, random(width), random(height), 50, 50);
//}
scoobyX= random(30, width-30);
scoobyY = random(30, height - 30);

scoobyXspeed = 5;
scoobyYspeed = 5;
imageMode(CENTER);


}

void draw(){
background(r, g, b);
fill(120, 60, 113);
textAlign(CENTER);
textSize(40);
text("Score: " + score, width/2, 45);
noCursor();
image(scooby, mouseX, mouseY, 20, 20);

//animate the variables
scoobyX = scoobyX + scoobyXspeed;
scoobyY = scoobyY + scoobyYspeed;

for (int i = 0; i < 20; i++) {
ellipse(random(mouseX - 30, mouseX + 30), random(mouseY -30, mouseY+30), 5, 5);
}
ellipse(400, 300, 50, 50);
ellipse(400, 500, 50, 50);
ellipse(400, 700, 50, 50);
ellipse(400, 100, 50, 50);
ellipse(1000, 200, 50, 50);
ellipse(1000, 600, 50, 50);
ellipse(800, 400, 50, 50);
ellipse(100, 400, 50, 50);

//three arguments: PImage name, x, y, custom width, custom height
image(scooby, scoobyX, scoobyY, 50, 50);
image(scooby, mouseX, mouseY, 20, 20);
///check to see if furby has hit an edge
if(scoobyX <= 30 || scoobyX >= width-30){
scoobyXspeed = -scoobyXspeed;
}

if(scoobyY <= 30 || scoobyY >= height-30){
scoobyYspeed = -scoobyYspeed;
}

//check to see if the mouse has tagged it
//if so, add a point to score and move furby
if(dist(mouseX, mouseY, scoobyX, scoobyY) < 25){
scoobyX= random(30, width-30);
scoobyY = random(30, height-30);
scoobyXspeed = scoobyXspeed+1;
scoobyYspeed = scoobyYspeed+1;
score++;
r = random(255);
g = random(255);
b= random(255);
println(score);
}

if(score == 30){
background(0);
text("You Win!", width/2, 35);
}

}
