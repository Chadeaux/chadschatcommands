if EnableChatCommand == true then
	--Standard Chat
	AddEventHandler('chatMessage', function(source, name, message)
	  if string.sub(message, 1, string.len("/")) ~= "/" then
		  local name = GetPlayerName(source)
		TriggerClientEvent("SendProximityMessage", -1, source, name, message)
	  end
	  CancelEvent()
	end)

	--/me Command
	RegisterCommand('me', function(source, args, user)
	  local name = GetPlayerName(source)
	  TriggerClientEvent("SendProximityMessageMe", -1, source, name, table.concat(args, " "))
	end, false)

	--/do Command
	RegisterCommand('do', function(source, args, user)
	  local name = GetPlayerName(source)
	  TriggerClientEvent("SendProximityMessageDo", -1, source, name, table.concat(args, " "))
	end, false)

	--/gme Command
	RegisterCommand('gme', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^3^*global me | ^7" .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
	end, false)

	--/fb Command
	RegisterCommand('fb', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^0^*[^4Face Blocked^0] (^5@" .. GetPlayerName(source) .. "^0)^r", {30, 144, 255}, table.concat(args, " "))
	end, false)

	--/ooc Command
	RegisterCommand('ooc', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^*ooc | " .. GetPlayerName(source) .. "^r", {128, 128, 128}, table.concat(args, " "))
	end, false)

	--/ad Command
	RegisterCommand('ad', function(source, args, user)
			if AdStyle == 1 then
				TriggerClientEvent('chatMessage', -1, "^0^*[^1advertisement^0] " .. GetPlayerName(source), {255,215,0}, table.concat(args, " ")) --ADVERT WITH USERNAME
			elseif AdStyle == 2 then
				TriggerClientEvent('chatMessage', -1, "^0^*[^1advertisement^0] (^1@" .. GetPlayerName(source) .. "^0)^r", {255,215,0}, table.concat(args, " ")) --ADVERT WITH TWITTER STYLE USERNAME HANDLE
			elseif AdStyle == 3 then
				TriggerClientEvent('chatMessage', -1, "^0^*[^1advertisement^0]^r", {255,215,0}, table.concat(args, " ")) --ADVERT WITH NO USERS IDENTIFIER
			end
	end, false)

	
	RegisterCommand('anon', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^*[^*anon] (@^*Anonymous)^r", {0, 0, 0}, table.concat(args, " "))
	end, false)
	
	RegisterCommand('sp', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^*1TRAFFIC STOP^r", {0, 0, 0}, SEARCHES PLAYER WDIF??)
	end, false)
	
		RegisterCommand('sv', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^*1TRAFFIC STOP^r", {0, 0, 0}, SEARCHES VEHICLE WDIF??)
	end, false)

		RegisterCommand('run', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, "^*1TRAFFIC STOP^r", {0, 0, 0}, RUNS 
	ID AND PLATE WDIF??)
	end, false)

	--String Splitting
	function stringsplit(inputstr, sep)
		if sep == nil then
			sep = "%s"
		end
		local t={} ; i=1
		for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
			t[i] = str
			i = i + 1
		end
		return t
	end
end



-- Information Commands

-- Discord Command
if EnableDiscordCommand == true then
	RegisterCommand('dc', function()
		TriggerClientEvent('chatMessage', -1, "^*Discord: ^_" .. DiscordLink, {245, 191, 66})
	end, false)
end

-- TeamSpeak Command
if EnableTeamSpeakCommand == true then
	RegisterCommand('ts', function()
		TriggerClientEvent('chatMessage', -1, "^*TeamSpeak : ^_" .. TeamSpeakLink, {245, 191, 66})
	end, false)
end

-- Website Command
if EnableWebsiteCommand == true then
	RegisterCommand('web', function()
		TriggerClientEvent('chatMessage', -1, "^*Website: ^_" .. WebsiteLink, {245, 191, 66})
	end, false)
end