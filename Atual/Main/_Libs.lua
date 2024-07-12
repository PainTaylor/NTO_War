storage.fugaspell = ''

onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then
    if text:find('!setvoc ') then
      if text:find('Sasuke') then
        setvocsasuke()
      end
      if text:find('Chino') then
        setvocchino()
      end
    end
  end
end)
loadvoc = false
onTextMessage(function(mode, text)
  if loadvoc == true then return end
  if text:find('You see yourself') then
    startindex = text:find('are')
    endindex = text:find('VIP')
    if startindex and endindex then
      class = text:sub(startindex+4, endindex-3)
      say('!setvoc ' .. class)
      loadvoc = true
    end
  end
end)

setvocsasuke = function()
  storage.magiacombo1 = 'Indoranoya'
  storage.magiacombo2 = 'Hono-Ikazuchi'
  storage.magiacombo3= 'Fureimurappufaia'
  storage.magiacombo4 = 'Kurohomura no maiso'
  storage.magiacombo5 = ''
  storage.special = 'Utsushi wa me no kyosei'
  storage.ultimate = 'Susanoo Kagutsuchi'
  storage.fugaspell = 'Senjutsu no susanoo'
  storage.AOE = 'Fenikkusufurawatekunikku'
  info('Load: Sasuke')
end


setvocchino = function()
  storage.magiacombo1 = 'Chi no tatsumaki'
  storage.magiacombo2 = 'Buraddokuro'
  storage.magiacombo3= 'Raizu obu za Buraddo doragon'
  storage.magiacombo4 = 'Genjutsu torappu'
  storage.magiacombo5 = ''
  storage.special = 'Genjutsu: Ketsuryugan'
  storage.ultimate = 'Ketsueki kanri'
  storage.fugaspell = nil
  storage.AOE = 'Shabontama ninjutsu'
  info('Load: Chino')
end
