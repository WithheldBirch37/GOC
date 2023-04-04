
Player s;

// function runs one time at the beginning
// think... pre-code
void setup(){
    size(800, 600); // window size, 800 wide, 600 tall
    s = new Sprite(width/2, height/2, 50, 50);
}

// always runs, at speed the speed of the frame rate
// think... FPS
void draw(){
    s.update();
    s.display();
}

void keyPressed(){ // event: a key was pressed down

}

void keyReleased(){ // event: a key was released and it flung upward

}