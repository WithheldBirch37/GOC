SpriteManager _SM;
Player s;

// function runs one time at the beginning
// think... pre-code
void setup(){
    size(1024, 768); // window size, 800 wide, 600 tall
    _SM = new SpriteManager();
    //_SM.spawn(new Invader(250, 50));
    _SM.spawn(new Shooter(150, 100));
    _SM.spawn(new Kamikaze(250, 50));
}

// always runs, at speed the speed of the frame rate
// think... FPS
void draw(){
    background(0);
    _SM.manage();
}

void keyPressed(){ // event: a key was pressed down
    _SM.player.keyDown();
}

void keyReleased(){ // event: a key was released and it flung upward
    _SM.player.keyUp();
}