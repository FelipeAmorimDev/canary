local rapierQuest = Action()

function rapierQuest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:questKV("rapier"):get("completed") then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The box is empty.")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a rapier.")
		player:addItem(3272, 1)
		player:questKV("rapier"):set("completed", true)
	end
	return true
end

rapierQuest:position({ x = 32099, y = 32198, z = 9 })
rapierQuest:register()
