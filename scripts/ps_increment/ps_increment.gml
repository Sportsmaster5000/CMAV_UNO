function ps_increment(argument0, argument1, argument2) {
	//ps_increment(ps_increment, index, array)
	//Increments the menu array. Returns the new index. If it would go over the array size, returns 0.
	var add = argument0;
	var index = argument1;
	var size = argument2;

	index += add;

	if (index >= size)
	{
	    index = 0;
	}

	if (index < 0)
	{
	    index = size - 1;
	}

	return index;
}
