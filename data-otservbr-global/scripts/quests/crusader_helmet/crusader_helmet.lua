local cruzadeHelmetQuest = Action()

function cruzadeHelmetQuest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
  if player:questKV("cruzadehelmet"):get("completed") then
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The box is empty.")
  else 
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a cruzader helmet.")
    player:addItem(3391,1)
    player:questKV("cruzadehelmet"):set("completed", true)
  end

  return true
end 

cruzadeHelmetQuest:position({x = 32427, y = 31943, z = 14})
cruzadeHelmetQuest:register()
