///build_walls(rows,cols,outer_wall_count)
rows=argument0;
cols=argument1;
outer=argument2;
//rows

for(i=0; i<rows+outer; i++){
    for(c=0; c<cols+outer; c++){

        if(c<outer || i<outer)
            instance_create(x,y,obj_bedrock);
        else if(c>cols-1 ||i>rows-1)
            instance_create(x,y,obj_bedrock);
        else
            instance_create(x,y,obj_wall);

        x+=16;
    }
    x=0;
    y+=16;  
}


