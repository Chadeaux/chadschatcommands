if EnableAFK == true then
	RegisterServerEvent("KickForBeingAFK")
	AddEventHandler("KickForBeingAFK", function()
		DropPlayer(source, "You were AFK for too long.")
	end)
end