// Originally, the doors were meant to be swapped with a VScript. It can be done just as easily with Hammer logic, so we use that instead.
function OnPostSpawn() {
	local door = Entities.FindByClassname(null, "prop_testchamber_door");
	
	EntFireByHandle(door, "addoutput", "OnOpen !self:Skin:0:0:-1,0,-1", 0, self, self);
	EntFireByHandle(door, "addoutput", "OnClose !self:Skin:1:0:-1,0,-1", 0, self, self);
	door.SetModel("models/props/littlebuddy/hybrid_portal_door_combined.mdl");
}
