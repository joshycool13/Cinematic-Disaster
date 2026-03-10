var _inst = instance_place(x, y, obj_door);

if (_inst != noone) 
{
        var _tx  = _inst.target_x;
        var _ty  = _inst.target_y;
        var _loc = _inst.location;

        x = _tx;
        y = _ty;

        if (room_exists(_loc)) 
        {
            room_goto(_loc);
        }
    
}