-- Enter vehicle lagg fix --
setRadioChannel(0)
function OCPVE()
	if not radio then
		outputChatBox("type radio in f8 to enable gta radio",0,255,0)
		setRadioChannel(0)
	end
end
function OCPRS(id)
	if id ~= 0 and not radio then
		setRadioChannel(0)
		cancelEvent()
	end
end
addEventHandler("onClientPlayerVehicleEnter",localPlayer,OCPVE)
addEventHandler("onClientPlayerRadioSwitch",localPlayer,OCPRS)
addCommandHandler("radio",function()
	if radio then
		addEventHandler("onClientPlayerVehicleEnter",localPlayer,OCPVE)
		addEventHandler("onClientPlayerRadioSwitch",localPlayer,OCPRS)
		outputChatBox("radio off!",255,255,0)
		radio = nil
	else
		removeEventHandler("onClientPlayerVehicleEnter",localPlayer,OCPVE)
		removeEventHandler("onClientPlayerRadioSwitch",localPlayer,OCPRS)
		outputChatBox("radio on!",0,255,0)
		radio = true
	end
end)