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

setvocsasuke = function()
  storage.magiacombo1 = 'Indoranoya'
  storage.magiacombo2 = 'Hono-Ikazuchi'
  storage.magiacombo3= 'Fureimurappufaia'
  storage.magiacombo4 = 'Senjutsu no susanoo'
  storage.magiacombo5 = 'Kurohomura no maiso'
  storage.special = 'Utsushi wa me no kyosei'
  storage.ultimate = 'Susanoo Kagutsuchi'
  storage.fugaspell = 'Senjutsu no susanoo'
  storage.AOE = 'Fenikkusufurawatekunikku'
end


setvocchino = function()
  storage.magiacombo1 = 'Ketsuryugan'
  storage.magiacombo2 = 'Chi no tatsumaki'
  storage.magiacombo3= 'Buraddokuro'
  storage.magiacombo4 = 'Raizu obu za Buraddo doragon'
  storage.magiacombo5 = 'Genjutsu torappu'
  storage.special = 'Genjutsu: Ketsuryugan'
  storage.ultimate = 'Ketsueki kanri'
  storage.fugaspell = 'Senjutsu no susanoo'
  storage.AOE = 'Fenikkusufurawatekunikku'
end
