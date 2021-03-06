if EnableChatCommand == true then

	Citizen.CreateThread(function()

			TriggerEvent('chat:addSuggestion', '/ooc', 'Out Of Character chat Message. (Global Chat)', {
				{ name="Message", help="Put your questions or help request."}
			})

			TriggerEvent('chat:addSuggestion', '/me', 'Send message in the third person. (Proximity Chat)', {
				{ name="Action", help="action."}
			})

			TriggerEvent('chat:addSuggestion', '/gme', 'Send message in the third person. (Global Chat)', {
				{ name="Action", help="action."}
			})

			TriggerEvent('chat:addSuggestion', '/do', 'Send action message. (Proximity Chat)', {
				{ name="Action", help="action."}
			})

			TriggerEvent('chat:addSuggestion', '/ad', 'Send an ad in game (Global Chat)', {
				{ name="Message", help="Ad Message."}
			})

			TriggerEvent('chat:addSuggestion', '/fb', 'Send a Twotter in game. (Global Chat)', {
				{ name="Message", help="Twotter Message."}
			})

			TriggerEvent('chat:addSuggestion', '/anon', 'Send a anonymous message in game. (Global Chat)', {
				{ name="Message", help="Anonymous Message."}
			})
			
			TriggerEvent('chat:addSuggestion', '/sp', 'you search the player', {
				{ name="Action", help="you search the player."}
			})
			
						TriggerEvent('chat:addSuggestion', '/sv', 'you search the vehicle', {
				{ name="Action", help="you search the vehicle."}
			})

			TriggerEvent('chat:addSuggestion', '/run', 'you run their info', {
				{ name="Action", help="you run the info."}
			})


	end)

	--Standard Chat
	RegisterNetEvent('SendProximityMessage')
	AddEventHandler('SendProximityMessage', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "^r" .. name .. "", {128, 128, 128}, "^r " .. message)
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "^r" .. name .. "", {128, 128, 128}, "^r " .. message)
	  end
	end)


	RegisterNetEvent('SendProximityMessageMe')
	AddEventHandler('SendProximityMessageMe', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*ME | ^7" .. name .."^7: ".."^r " .. message)
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 ^*ME | ^7" .. name .."^7: ".."^r " .. message)
	  end
	end)

	
	RegisterNetEvent('SendProximityMessageDo')
	AddEventHandler('SendProximityMessageDo', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "", {255, 0, 0}, " ^9 ^*DO | " .. name .."^7:  ".."^r  " .. message)
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "", {255, 0, 0}, " ^9 ^*DO | " .. name .."^7:  ".."^r  " .. message)
	  end
	end)
end