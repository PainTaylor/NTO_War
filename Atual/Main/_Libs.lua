storage.fugaspell = ''







onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then
    if text:find('!setvoc ') then
      if text:find('Sasuke') then
        setvocsasuke()
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
  storage.special = ''
  storage.ultimate = ''
  storage.fugaspell = ''
end