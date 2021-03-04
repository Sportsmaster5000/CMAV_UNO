/// @description drops brushes on death.
event_inherited();

if (global.storySophie1) && !(global.storySophieBrushesSaved)
{
	instance_create_depth(x, y, depth, obj_brushes);
}