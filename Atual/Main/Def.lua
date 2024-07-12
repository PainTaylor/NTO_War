setDefaultTab("HP")
storage.exaustheal = now
storage.healspell = 'big regeneration'
healmacro = macro(200, 'heal', function()
  if hppercent() < 99 and storage.exaustheal < now then
    say(storage.healspell)
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
    use(tonumber(storage.hpitem))
  end
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