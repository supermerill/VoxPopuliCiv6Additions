-- EurekaLib
-- Author: merill
-- DateCreated: 11/13/2016 7:02:20 PM
--------------------------------------------------------------

EUREKA_NOTIFICATION_ALL = false

function SendEurekaNotiFication(pPlayer, pTeamTech, iTech, iEurekaModif)
	if(EUREKA_NOTIFICATION_ALL or pPlayer:CanResearch(iTech)) then
		local pTechInfo = GameInfo.Technologies[iTech];
		local name = Locale.ConvertTextKey(pTechInfo.Description);
	
		local title = Locale.ConvertTextKey("TXT_KEY_EUREKA_NOTIFICATION_TITLE", name, iEurekaModif);
		local description = title .. "[NEWLINE]";--Locale.ConvertTextKey("TXT_KEY_EUREKA_NOTIFICATION", name);
		description = description .. CreateEurekaResume(pTeamTech, pTechInfo);
		description = description .. "[NEWLINE]--------------------[NEWLINE]";
		description = description .. Locale.ConvertTextKey( pTechInfo.Help .. '_EUREKA' );

		pPlayer:AddNotification(NotificationTypes.NOTIFICATION_EUREKA_UPDATE,
			description, title, -1, -1, -1, iTech);
	end
end



function IncrementEureka(pPlayer, iTech, iMax)
	local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
	if(not pTeamTech:HasTech(iTech)) then
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<iMax) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
			SendEurekaNotiFication(pPlayer, pTeamTech, iTech, 1);
		end
	end
end
function IncrementEurekaGuarded(pPlayer, pTeamTech, iTech, iAmount, iMax)
	if(not pTeamTech:HasTech(iTech) and iAmount >0) then
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka < iMax) then
			pTeamTech:SetEurekaCounter(iTech, math.min(iMax,nbEureka+iAmount));
			SendEurekaNotiFication(pPlayer, pTeamTech, iTech, iAmount);
		end
	end
end

function MaxEureka(pPlayer, pTeamTech, iTech, iAmountNow, iMax)
	if(not pTeamTech:HasTech(iTech) and iAmountNow >0) then
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka < iMax and iAmountNow > nbEureka) then
			pTeamTech:SetEurekaCounter(iTech, math.min(iMax,iAmountNow));
			SendEurekaNotiFication(pPlayer, pTeamTech, iTech, iAmountNow - nbEureka);
		end
	end
end


function CreateEurekaResume(pTeamTechs, pTechInfo)
	local iNbEureka = pTeamTechs:GetEurekaCounter(pTechInfo.ID);
	local iEurekaPerMillion = pTechInfo.EurekaPerMillion;
	local iMaxEurekaCount = pTechInfo.MaxEurekaCount;
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
			iNbEureka, iReduction, iMaxEurekaCount, iMaxReduction, colorBegin, colorEnd);
	end

	return strResume;
end

