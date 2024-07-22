--------------Comandos de Controle Remoto--------------

followmacro = macro(100, 'Follow', function() 
if g_game.isAttacking() or g_game.isFollowing() then return end
  for _, spec in ipairs(getSpectators()) do
    if spec:getName() == storage.follow3 then
      g_game.follow(spec)
    end
  end
end)

configList = modules.game_bot.contentsPanel.config
onTalk(function(name, level, mode, text, channelId, pos)
  if channelId ~= 1 then return end
    if text == 'CarregarHunt' then
      configList:setCurrentOption(player:getName())
    end
    if text == 'CarregarTreino' then
      configList:setCurrentOption('Treino')
    end
    if text == 'ligar target' then
      TargetBot.setOn()
    end
    if text == 'desligar target' then
      TargetBot.setOff()
      Target.Id = nil
      Target.get = nil
      g_game.cancelAttack()
    end
    if text == 'pare de seguir' then
      followmacro.setOff()
      g_game.cancelFollow()
    end
    if text == 'Siga' then
      followmacro.setOn()
    end
    if text == 'desbugar Follow' then
      g_game.cancelFollow()
    end
end)

onTalk(function(name, level, mode, text, channelId, pos)
  if text:find('.siga ') then
    startindex = text:find('siga')
    endindex = text:find('!')
    storage.follow = nil
    storage.follow2 = nil
    storage.follow3 = text:sub(startindex+5,endindex-1)
  end
end)

macro(1, function()
if player:getShield() > 0 then return end
for _,PT in ipairs(getSpectators(posz())) do
if PT:getEmblem() == 1 and PT:getShield() > 0 then 
 return g_game.partyJoin(PT:getId())
end

end

delay(100)

end)

macro(2000, function()
  if getChannelId('Party') then return end
  if player:getShield(3) or player:getShield(2) then
    g_game.joinChannel(1)
  end
end)