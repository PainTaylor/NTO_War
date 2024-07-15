storage.fugaspell = nil

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
      if text:find('Indra') then
        setvocindra()
      end
      if text:find('Koji Kashin') then
        setvockojikashin()
      end
      if text:find('Maito') then
        setvocmaito()
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
--Ordem Keys S1=R S2 = F S3 = X S4 = 1
setvocsasuke = function()
  storage.magia200 = 'Indoranoya'
  storage.magia250 = 'Hono-Ikazuchi'
  storage.magia300= 'Fureimurappufaia'
  storage.magia400 = 'Kurohomura no maiso'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Utsushi wa me no kyosei'
  storage.special2 = 'Susanoo Kagutsuchi'
  storage.special3 = 'Senjutsu no susanoo'
  storage.special4 = nil
  storage.buff = 'Susanoo Protection'
  storage.buff2 = 'Susanoo Kagutsuchi'
  storage.AOE = 'Fenikkusufurawatekunikku'
  info('Load: Sasuke')
end


setvocchino = function()
  storage.magia200 = 'Chi no tatsumaki'
  storage.magia250 = 'Buraddokuro'
  storage.magia300= 'Raizu obu za Buraddo doragon'
  storage.magia400 = 'Genjutsu torappu'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Genjutsu: Ketsuryugan'
  storage.special2 = 'Ketsueki kanri'
  storage.special3 = nil
  storage.special4 = nil
  storage.buff = 'Susanoo Protection'
  storage.buff2 = 'Susanoo Kagutsuchi'
  storage.AOE = 'Shabontama ninjutsu'
  info('Load: Chino')
end

setvocmadara = function()
  storage.magia200 = 'Akuma no zo no kusari'
  storage.magia250 = 'Yasaka Magatama'
  storage.magia300= 'Madara: kamui'
  storage.magia400 = 'Ki no ryu'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Madara: Chibaku Tensei'
  storage.special2 = 'Pafekutosusanoo'
  storage.special3 = 'Limbo'
  storage.special4 = nil
  storage.buff = 'Madara Susanoo'
  storage.buff2 = 'Pafekutosusanoo'
  storage.AOE = 'Gureto fureimu furawa'
  info('Load: Madara')
end

setvocshisui = function()
  storage.magia200 = 'Susanoo Barrage'
  storage.magia250 = 'Kotoamatsukami'
  storage.magia300= 'Magen Kasegui no Jutsu'
  storage.magia400 = 'Katon Houenka'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Tsukuyomi no Jutsu'
  storage.special2 = 'Shokanamatsukami'
  storage.special3 = 'Susanoo Tsukumo'
  storage.special4 = nil
  storage.buff = 'Madara Susanoo'
  storage.buff2 = 'Pafekutosusanoo'  
  storage.AOE = 'Shunka Shuto'
  info('Load: Shisui')
end

setvoctobirama = function()
  storage.magia200 = 'Suiton Suidanha'
  storage.magia250 = 'Suiton Suishoha'
  storage.magia300= 'Suiton Teppodama'
  storage.magia400 = 'Suiton Suikosogyoku no Jutsu'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Gottsunko'
  storage.special2 = 'Kokuangyo no Jutsu'
  storage.special3 = nil
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = 'Suiro no Muchi'
  storage.buff2 = 'Mawashi no Jutsu'
  storage.AOE = 'Dai Suiton Dragon no Jutsu'
  info('Load: Tobirama')
end

setvocindra = function()
  storage.magia200 = 'Bodipiasusanda'
  storage.magia250 = 'Vajra'
  storage.magia300= 'Shizen no raimei goon'
  storage.magia400 = 'Indra: amaterasu'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Guretofaiaborute'
  storage.special2 = 'Kaminari no hassei'
  storage.special3 = 'Ninshuu Hono'
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = 'Indra: susanoo'
  storage.buff2 = 'Ninshuu Hono'
  storage.AOE = 'Mangekyou Amaterasu'
  info('Load: Indra')
end

setvockojikashin = function()
  storage.magia200 = 'Sennin-jutsu: Go pinukan no hi ogi'
  storage.magia250 = 'Faiasutairu: Fureimuatakku'
  storage.magia300= 'Shokan: Hono yama no shin no hono'
  storage.magia400 = 'Samadi no shin no hono'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Cho cho rasen'
  storage.special2 = "Hari Jizo"
  storage.special3 = 'Shokan: Boiragama'
  storage.special4 = "Kanzen'naru sen'nin modo"
  storage.fugaspell = nil
  storage.buff = 'Hamittomodo'
  storage.buff2 = "Kanzen'naru sen'nin modo"
  storage.AOE = 'Mangekyou Amaterasu'
  info('Load: Koji')
end

setvocmaito = function()
  storage.magia200 = 'Sekizo'
  storage.magia250 = 'Hirudora'
  storage.magia300= 'Asa Kujaku'
  storage.magia400 = 'Yagai'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Dai Yagai'
  storage.special2 = "Open Gates Of Death"
  storage.special3 = nil
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = "Open Gates Of Life"
  storage.buff2 = "Open Gates Of Death"
  storage.AOE = 'Konoha Reppu'
  info('Load: Maito')
end