function RoomTransition(Type, TargetRoom){
	if (!instance_exists(oTransition))
	{
		with(instance_create_depth(0,0,-9999,oTransition))
		{
			type = Type;
			target = TargetRoom;
		}
	} else show_debug_message("Trying to transition while transition is happening!");
}