class Kamikaze extends Sprite{

    long mark, wait = 1200;

    Kamikaze(float x, float y){
        super(x, y, 40, 40);
        vel = new PVector(5, 0);
        mark = millis();
    }
    
    @Override
    void update(){
        super.update();
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(5);
        if(millis() - mark > wait){
            mark = millis();
        }
        pos.add(aim);
    }

}