/// @description ps_instance_get_index()
function ps_instance_get_index() {
	//Gets this instance's index in instance order. Returns -1 if none can be found.

	//Sets the playerIndex based on the instance number.
	for (var _i = 0; _i < instance_number(object_index); _i += 1)
	{
	    if (id == instance_find(object_index, _i))
	    {
	        return _i;
	    } 
	}

	return noone;



}
