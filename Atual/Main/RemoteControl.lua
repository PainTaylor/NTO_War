--------------Comandos de Controle Remoto--------------
setDefaultTab("Main")

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
local setStanceMode = g_game.setChaseMode;
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
    if text == 'ataquefollow' then
      setStanceMode(1)
    end
    if text == 'ataquestand' then
      setStanceMode(0)
    end
end)

onTalk(function(name, level, mode, text, channelId, pos)
  if text:find('!seguir ') then
    startindex = text:find('seguir')
    endindex = text:find('%.')
      if startindex and endindex then
    storage.follow = nil
    storage.follow2 = nil
    storage.follow3 = text:sub(startindex+7,endindex-1)
    end
  end
end)

onTalk(function(name, level, mode, text, channelId, pos)
    startindex = text:find('Attack: ')
    endindex = text:find('%.')
      if startindex and endindex then
    target = text:sub(startindex+7,endindex-1)
    --pegar criaturas por id, e comparar IDs dps colocar o callback de targetar.
  end
end)

onTalk(function(name, level, mode, text, channelId, pos)
  if text:find('Travel: ') then
    if text:find('konoha') then
      travelkonoha()
    end
    if text:find('Sunagakure') then
      travelsuna()
    end
    if text:find('takumi') then
      travelvtakumi()
    end
    if text:find('monte') then
      travelMonteMyuboki()
    end
    if text:find('forest') then
      travelforest()
    end
    if text:find('amegakure') then
      travelamegakure()
    end
    if text:find('suna camp') then
      travelsunacamp()
    end
    if text:find('ilha iwa') then
      traveliwagakureisl()
    end
    if text:find('yuki') then
      travelYukigakure()
    end
    if text:find('iwagakure') then
      traveliwagakure()
    end
    if text:find('vdf') then
      travelvdf()
    end
    if text:find('kumogakure') then
      travelkumogakure()
    end
    if text:find('tsuki') then
      travelTsuki()
    end
    if text:find('templo') then
      travelTFogo()
    end
    if text:find('kodai') then
      travelKodai()
    end
    if text:find('lua') then
      travelmoon()
    end
    if text:find('genbu') then
      travelgenbu()
    end
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


remotecontrol = macro(1000, 'RemoteControl', function()end)
onKeyDown(function(keys)
  if modules.game_console:isChatEnabled() and remotecontrol.isOff() then return end
  if keys == 'P' then
    sayChannel(1, 'pare de seguir')
  end
  if keys == 'L' then
    sayChannel(1, 'Siga')
  end
  if keys == 'O' then
    sayChannel(1, 'ligar target')
  end
  if keys == 'I' then
    sayChannel(1, 'desligar target')
  end
  if keys == 'U' then
    sayChannel(1, 'desbugar Follow')
  end
  if keys == 'k' then
    sayChannel(1, 'ataquefollow')
  end
  if keys == 'J' then
    sayChannel(1, 'ataquestand')
  end
  --if keys == 'H' then
  --  sayChannel(1, 'Attack: ' .. Target .. '%,')
  --end
end)