///cut_to_drop(x,y)
cutx=argument0;
cuty=argument1;

ran = choose(0,1);

if(x-cutx>0)
    x_dir="left";
else
    x_dir="right";
    
if(y-cuty>0)
    y_dir="up";
else
    y_dir="down";
    
while(x != cutx){
    with(obj_wall){
        if collision_rectangle(other.x,other.y,other.x+32,other.y+16,id,1,0){
            instance_destroy();
        }
    }
    if(x_dir="left")
        x-=16;
    else
        x+=16;
}
while(y != cuty){
    with(obj_wall){
        if collision_rectangle(other.x,other.y,other.x+32,other.y+16,id,1,0){
            instance_destroy();
        }
    }
    if(y_dir="up")
        y-=16;
    else
        y+=16;
}
