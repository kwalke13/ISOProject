///cut_wall(x,y,length)
x=argument0;
y=argument1;
length=argument2;

for(i=0; i<length; i++){
    with(obj_wall){
        if collision_rectangle(other.x,other.y,other.x+32,other.y+16,id,1,0){
            instance_destroy();
        }
    }

    ran = choose(0,1,2,3);
    if(ran==0 && place_meeting(x+16,y,obj_bedrock)!=true)
        x+=16;
    else if(ran==1 && place_meeting(x,y-16,obj_bedrock)!=true)
        y-=16;
    else if(ran==2 && place_meeting(x-16,y,obj_bedrock)!=true)
        x-=16;
    else if(ran==3 && place_meeting(x,y+16,obj_bedrock)!=true)
        y+=16;
            
}
// drop cut
with(obj_wall){
        if collision_rectangle(other.x,other.y,other.x+32,other.y+16,id,1,0){
            instance_destroy();
        }
}

// cut to drop
if(instance_exists(obj_drop)){
 inst = instance_nearest(x,y,obj_drop);
 instance_create(x,y,obj_drop);
 cut_to_drop(inst.x,inst.y);   
}
else{
    instance_create(x,y,obj_drop);
}
image_alpha=0;


