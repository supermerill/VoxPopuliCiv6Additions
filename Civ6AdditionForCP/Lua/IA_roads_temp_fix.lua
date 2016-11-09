-- IA_roads_temp_fix
-- Author: meril_000
-- DateCreated: 10/29/2016 1:26:44 PM
--------------------------------------------------------------

print("IA_remove_roads");
-- remove road building for ai.
-- todo: create the "build war road" mission in dll
function DoNotBuildRoadYourself(iPlayerOwner, iUnitID, mission)
	if(mission == 58) then -- MISSION_ROUTE_TO
		local unit = Players[ iPlayerOwner ]:GetUnitByID( iUnitID );
		if(unit:IsCombatUnit() == false) then
			return false;
		end
	end
	return true;
end

GameEvents.CanStartMission.Add(DoNotBuildRoadYourself);

