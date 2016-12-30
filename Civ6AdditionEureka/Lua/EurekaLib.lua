-- EurekaLib
-- Author: merill
-- DateCreated: 11/13/2016 7:02:20 PM
--------------------------------------------------------------

-- you can set it to false to only have eureka notification about researchable techs (= almost never)
EUREKA_NOTIFICATION_ALL = true

function SendEurekaNotiFication(pPlayer, pTeamTech, iTech, iPreviousEureka, iEurekaModif)
	if(EUREKA_NOTIFICATION_ALL or pPlayer:CanResearch(iTech)) then
		local pTechInfo = GameInfo.Technologies[iTech];
		local iMod1000EurekaForUI = pTechInfo.Mod1000EurekaForUI;
		local minModif = math.floor(((iPreviousEureka+iEurekaModif)*iMod1000EurekaForUI)/1000) - math.floor((iPreviousEureka*iMod1000EurekaForUI)/1000);
		--check if it's enough to warrant a notification
		if( minModif >0) then
			local name = Locale.ConvertTextKey(pTechInfo.Description);
			local title = Locale.ConvertTextKey("TXT_KEY_EUREKA_NOTIFICATION_TITLE", name, minModif);
			local description = "";--Locale.ConvertTextKey("TXT_KEY_EUREKA_NOTIFICATION", name);
			description = description .. CreateEurekaResume(Teams[pPlayer:GetTeam()], pTeamTech, pTechInfo);
			description = description .. "[NEWLINE]--------------------[NEWLINE]";
			description = description .. Locale.ConvertTextKey( pTechInfo.Help .. '_EUREKA' );

			pPlayer:AddNotification(NotificationTypes.NOTIFICATION_EUREKA_UPDATE,
				description, title, -1, -1, -1, iTech);
		end
	end
end

function IncrementEureka(pPlayer, iTech, iMax)
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	if(not pTeamTech:HasTech(iTech)) then
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka < iMax*pTeam:GetNumMembers()) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
			SendEurekaNotiFication(pPlayer, pTeamTech, iTech, nbEureka, 1);
		end
	end
end

function ChangeEureka(pPlayer, pTeamTech, iTech, iAmount, iMax)
	if(not pTeamTech:HasTech(iTech) and iAmount >0) then
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		local teamMax = iMax*Teams[pPlayer:GetTeam()]:GetNumMembers();
		if(nbEureka < teamMax) then
			pTeamTech:SetEurekaCounter(iTech, math.min(teamMax,nbEureka+iAmount));
			SendEurekaNotiFication(pPlayer, pTeamTech, iTech, nbEureka, math.min(teamMax,nbEureka+iAmount) - nbEureka);
		end
	end
end

function MaxEureka(pPlayer, pTeamTech, iTech, iAmountNow, iMax)
	if(not pTeamTech:HasTech(iTech) and iAmountNow >0) then
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		local nbTeamMembers = Teams[pPlayer:GetTeam()]:GetNumMembers();
		-- it's a false "max", as we consider allplayer as equal as the best one
		local teamAmount = iAmountNow * nbTeamMembers
		local teamMax = iMax * nbTeamMembers;
		if(nbEureka < teamMax and teamAmount > nbEureka) then
			pTeamTech:SetEurekaCounter(iTech, math.min(teamMax, teamAmount));
			SendEurekaNotiFication(pPlayer, pTeamTech, iTech, nbEureka, math.min(teamMax, teamAmount) - nbEureka);
		end
	end
end


function CreateEurekaResume(pTeam, pTeamTechs, pTechInfo)
	local iMod1000EurekaForUI = pTechInfo.Mod1000EurekaForUI;
	local iNbEureka = pTeamTechs:GetEurekaCounter(pTechInfo.ID);
	local iEurekaPerMillion = pTechInfo.EurekaPerMillion / pTeam:GetNumMembers();
	local iMaxEurekaCount = pTechInfo.MaxEurekaCount * pTeam:GetNumMembers();
	local strResume = "";
	if(iEurekaPerMillion > 0) then
		local iReduction = iNbEureka * iEurekaPerMillion;
		iReduction = iReduction / 10000;
		local iMaxReduction = iMaxEurekaCount * iEurekaPerMillion;
		iMaxReduction = iMaxReduction / 10000;
			
		local colorBegin = "";
		local colorEnd = "";
		if(iNbEureka < (iMaxEurekaCount*3)/10) then
			colorBegin = "[COLOR_NEGATIVE_TEXT]";
			colorEnd = "[ENDCOLOR]";
		end
		if(iNbEureka > (iMaxEurekaCount*6)/10) then
			colorBegin = "[COLOR_POSITIVE_TEXT]";
			colorEnd = "[ENDCOLOR]";
		end
		strResume = strResume .. Locale.ConvertTextKey("TXT_KEY_EUREKA_TOOLTIP", 
			(iNbEureka*iMod1000EurekaForUI)/1000, iReduction, (iMaxEurekaCount*iMod1000EurekaForUI)/1000, iMaxReduction, colorBegin, colorEnd);
	end

	return strResume;
end

