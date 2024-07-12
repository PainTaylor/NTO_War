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
      if text:find('Madara') then
        setvocmadara()
      end
      if text:find('Shisui') then
        setvocshisui()
      end
      if text:find('Tobirama') then
        setvoctobirama()
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
  storage.special1 = 'Utsushi wa me no kyosei'
  storage.special2 = 'Susanoo Kagutsuchi'
  storage.special3 = 'Senjutsu no susanoo'
  storage.AOE = 'Fenikkusufurawatekunikku'
  info('Load: Sasuke')
end


setvocchino = function()
  storage.magiacombo1 = 'Chi no tatsumaki'
  storage.magiacombo2 = 'Buraddokuro'
  storage.magiacombo3= 'Raizu obu za Buraddo doragon'
  storage.magiacombo4 = 'Genjutsu torappu'
  storage.magiacombo5 = ''
  storage.special1 = 'Genjutsu: Ketsuryugan'
  storage.special2 = 'Ketsueki kanri'
  storage.special3 = nil
  storage.AOE = 'Shabontama ninjutsu'
  info('Load: Chino')
end

setvocmadara = function()
    storage.magiacombo1 = 'Akuma no zo no kusari'
  storage.magiacombo2 = 'Yasaka Magatama'
  storage.magiacombo3= 'Madara: kamui'
  storage.magiacombo4 = 'Ki no ryu'
  storage.magiacombo5 = ''
  storage.special1 = 'Madara: Chibaku Tensei'
  storage.special2 = 'Pafekutosusanoo'
  storage.special3 = 'Limbo'
  storage.AOE = 'Gureto fureimu furawa'
  info('Load: Madara')
end

setvocshisui = function()
    storage.magiacombo1 = 'Susanoo Barrage'
  storage.magiacombo2 = 'Kotoamatsukami'
  storage.magiacombo3= 'Magen Kasegui no Jutsu'
  storage.magiacombo4 = 'Katon Houenka'
  storage.magiacombo5 = ''
  storage.special1 = 'Tsukuyomi no Jutsu'
  storage.special2 = 'Shokanamatsukami'
  storage.special3 = 'Susanoo Tsukumo'
  storage.AOE = 'Shunka Shuto'
  info('Load: Shisui')
end

setvoctobirama = function()
    storage.magiacombo1 = 'Suiton Suidanha'
  storage.magiacombo2 = 'Suiton Suishoha'
  storage.magiacombo3= 'Suiton Teppodama'
  storage.magiacombo4 = 'Suiton Suikosogyoku no Jutsu'
  storage.magiacombo5 = ''
  storage.special1 = 'Gottsunko'
  storage.special2 = 'Kokuangyo no Jutsu'
  storage.special3 = ''
  storage.fugaspell = ''
  storage.buff = 'Mawashi no Jutsu'
  storage.AOE = 'Dai Suiton Dragon no Jutsu'
  info('Load: Tobirama')
end