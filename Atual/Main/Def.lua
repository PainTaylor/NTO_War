setDefaultTab("HP")
storage.exaustheal = now
storage.healspell = 'big regeneration'
healmacro = macro(200, 'heal', function()
  if hppercent() < 99 and storage.exaustheal < now then
    say(storage.healspell)
  end
 end)


storage.defensekeep = now
macro(200, 'Chakra Defense', function()
  if not hasmanashield() and hppercent() < 40 then
    say('chakra defense')
  end
  if (hppercent() > 90 or manapercent() < 10) and storage.defensekeep < now then
    say('kai')
  end
end)



onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then
    if text == 'chakra defense' then
      storage.defensekeep = now + 3000
    end
  end
end)

UI.Label('Item ID')
UI.TextEdit(storage.hpitem or "3077", function(widget, newText)
storage.hpitem = newText
end)

UI.Label('HP')
UI.TextEdit(storage.hppot or "60", function(widget, newText)
storage.hppot = newText
end)

itemhealmacro = macro(200, 'Item heal', function()
  if hppercent() < tonumber(storage.hppot) then
    storage.hpitem = tonumber(storage.hpitem)
    useWith(storage.hpitem, player)
  end
end)

UI.Separator()

UI.Label('Buff')
macro(200, 'buff', function()
  if hasPartyBuff() then return end
  say(storage.buff)
end)

macro(1000, 'Buff2', function()
  if storage.tbuff2 <= now then
    say(storage.buff2)
  end
end)

storage.tbuff2 = now
onTalk(function(name, level, mode, text, channelId, pos)
if name ~= player:getName() then return end
if text:lower() == storage.buff2 and storage.tbuff2 < now then
  storage.tbuff2 = now + 60000
end
end)

UI.Separator()


macro(200, 'Haste', function()
  if hasHaste() then return end
    say('Concentrate Chakra Feet')
end)



UI.Separator()

UI.Label('HP AutoFuga')
UI.TextEdit(storage.SpecialHP or "60", function(widget, newText)
storage.SpecialHP = newText
end)

macro(200, 'Special Def', function()
  if hppercent() < tonumber(storage.SpecialHP) then
    if storage.fugaspell then
      say(storage.fugaspell)
    end
  end
end)

UI.Separator()

--info('Loaded Def')