/// @description decrements timer. If timer is 0 restarts the room.
time--;

if (time < 0)
{
	room_restart();
}