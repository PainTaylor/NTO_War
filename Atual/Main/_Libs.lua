storage.fugaspell = nil

onTalk(function(name, level, mode, text, channelId, pos)
  if name == player:getName() then
    if text:find('!setvoc ') then
      if text:find('Sasuke') then
        setvocSasuke()
      end
      if text:find('Chino') then
        setvocChino()
      end
      if text:find('Madara') then
        setvocMadara()
      end
      if text:find('Shisui') then
        setvocShisui()
      end
      if text:find('Tobirama') then
        setvocTobirama()
      end
      if text:find('Indra') then
        setvocIndra()
      end
      if text:find('Koji Kashin') then
        setvocKojikashin()
      end
      if text:find('Maito') then
        setvocMaito()
      end
      if text:find('Kaguya Otsutsuki') then
        setvocKaguya()
      end
      if text:find('Itachi') then
        setvocItachi()
      end
      if text:find('Momoshiki') then
        setvocMomoshiki()
      end
      if text:find('Orochimaru') then
        setvocOrochimaru()
      end
      if text:find('Sandaime Raikage') then
        setvocSRaikage()
      end
      if text:find('Code') then
        setvocCode()
      end
      if text:find('Tobi1') then
        setvocTobi()
      end
      if text:find('Sarada') then
        setvocSarada()
      end
      if text:find('Tsunade') then
        setvocTsunade()
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
setvocSasuke = function()
  storage.magia200 = 'Indoranoya'
  storage.magia250 = 'Hono-Ikazuchi'
  storage.magia300 = 'Fureimurappufaia'
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


setvocChino = function()
  storage.magia200 = 'Chi no tatsumaki'
  storage.magia250 = 'Buraddokuro'
  storage.magia300 = 'Raizu obu za Buraddo doragon'
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

setvocMadara = function()
  storage.magia200 = 'Akuma no zo no kusari'
  storage.magia250 = 'Yasaka Magatama'
  storage.magia300 = 'Madara: kamui'
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

setvocShisui = function()
  storage.magia200 = 'Susanoo Barrage'
  storage.magia250 = 'Kotoamatsukami'
  storage.magia300 = 'Magen Kasegui no Jutsu'
  storage.magia400 = 'Katon Houenka'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Tsukuyomi no Jutsu'
  storage.special2 = 'Shokanamatsukami'
  storage.special3 = 'Susanoo Tsukumo'
  storage.special4 = nil
  storage.buff = 'Sharingan Kotetsu'
  storage.buff2 = nil  
  storage.AOE = 'Shunka Shuto'
  info('Load: Shisui')
end

setvocTobirama = function()
  storage.magia200 = 'Suiton Suidanha'
  storage.magia250 = 'Suiton Suishoha'
  storage.magia300 = 'Suiton Teppodama'
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

setvocIndra = function()
  storage.magia200 = 'Bodipiasusanda'
  storage.magia250 = 'Vajra'
  storage.magia300 = 'Shizen no raimei goon'
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

setvocKojikashin = function()
  storage.magia200 = 'Sennin-jutsu: Go pinukan no hi ogi'
  storage.magia250 = 'Faiasutairu: Fureimuatakku'
  storage.magia300 = 'Shokan: Hono yama no shin no hono'
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

setvocMaito = function()
  storage.magia200 = 'Sekizo'
  storage.magia250 = 'Hirudora'
  storage.magia300 = 'Asa Kujaku'
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

setvocKaguya = function()
  storage.magia200 = 'Togebari'
  storage.magia250 = 'Bocho Gudodama'
  storage.magia300 = 'Konnichisama'
  storage.magia400 = 'Yomotsu Hirasaka'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Amenominaka'
  storage.special2 = "Yomotsu Hirasaka"
  storage.special3 = 'Kankaku-teki tekunikku'
  storage.special4 = nil
  storage.fugaspell = nil
  storage.buff = "Rinne Sharingan"
  storage.buff2 = "Kankaku-teki tekunikku"
  storage.AOE = 'Yachihoko no Kami'
  info('Load: Kaguya')
end

setvocItachi = function()
  storage.magia200 = 'Amaterasuu'
  storage.magia250 = 'Iatsu Sharingan'
  storage.magia300 = 'Katon Fenix Gouenkyuu'
  storage.magia400 = 'Susanoo Noshuku'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Tsukuyomi no Jutsu'
  storage.special2 = "Karasuamatsukami"
  storage.special3 = 'Izanami'
  storage.special4 = 'Karasu Bunshin'
  storage.fugaspell = 'Karasuamatsukami'
  storage.buff = "Fuumetsu Susanoo"
  storage.buff2 = "Kankaku-teki tekunikku"
  storage.AOE = 'Mangekyou Amaterasu'
  info('Load: Itachi')
end

setvocMomoshiki = function()
  storage.magia200 = 'Shinku no hono'
  storage.magia250 = 'Karuma: Seigyo funo'
  storage.magia300 = 'Otsutsuki jiku ninjutsu'
  storage.magia400 = 'Biji yuubakudan'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Guren no rasen'
  storage.special2 = "Kankaku"
  storage.special3 = 'Saishu keitai otsutsuki'
  storage.special4 = nil
  storage.fugaspell = 'Kankaku'
  storage.buff = "Kinniku kakucho"
  storage.buff2 = "Saishu keitai otsutsuki"
  storage.AOE = 'Yakusa-no-Ikazuchi'
  info('Load: Momoshiki')
end

setvocOrochimaru = function()
  storage.magia200 = 'Sunekuatakku'
  storage.magia250 = 'Hebi ni kamareta'
  storage.magia300 = 'Sodosuneku'
  storage.magia400 = 'Kusanagi notsurugi'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Orochi no noroi'
  storage.special2 = "Yomotsu Hirasaka"
  storage.special3 = 'Edo Tensei Tobirama'
  storage.special4 = nil
  storage.fugaspell = 'Daijamaru-ryu migawari-jutsu'
  storage.buff = "Noroi shirushi"
  storage.buff2 = "Orochi no noroi"
  storage.AOE = 'Mandara no Jin'
  info('Load: Orochimaru')
end

setvocSRaikage = function()
  storage.magia200 = 'Kuroi inazuma'
  storage.magia250 = 'Raigaponpu'
  storage.magia300 = 'Jigoku no sashi kizu'
  storage.magia400 = 'Ritoruburakkuraitoningu'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Najji'
  storage.special2 = "Keimusho no mon no tenohira soko"
  storage.special3 = 'Massuguna inazuma'
  storage.special4 = nil
  storage.magiastack = 'Keimusho no mon no tenohira soko'
  storage.fugaspell = 'Daijamaru-ryu migawari-jutsu'
  storage.buff = "Raitoningusutairuchakuramodo"
  storage.buff2 = "Massuguna inazuma"
  storage.AOE = 'Boryoku-tekina inazuma yoko'
  info('Load: S. Raikage')
end

setvocCode = function()
  storage.magia200 = 'Karumahowaitoburedo'
  storage.magia250 = 'Karumahowaitosufia'
  storage.magia300 = 'Karumahowaitoshokku'
  storage.magia400 = 'Karumahowaitoerekutorikkusufia'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Tsumeato'
  storage.special2 = "Shisutemukodingu"
  storage.special3 = 'Kosho shita reseputakuru'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = nil
  storage.buff = "Howaitokaruma"
  storage.buff2 = "Kosho shita reseputakuru"
  storage.AOE = 'Karumahowaitoparusu'
  info('Load: Code')
end

setvocTobi = function()
  storage.magia200 = 'Fenikkusufurawa'
  storage.magia250 = 'Tobi: kamui'
  storage.magia300 = 'Gedo no ma-zo'
  storage.magia400 = 'Muttsu no akai'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Tobi: kamui in'
  storage.special2 = 'Izanagi'
  storage.special3 = 'Uchi wa kikan'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = nil
  storage.buff = 'Akuma no zo no hogo'
  storage.buff2 = 'Uchi wa kikan'
  storage.AOE = 'Fenikkusufurawatekunikku'
  info('Load: Tobi')
end


setvocSarada = function()
  storage.magia200 = 'Yunikuna sakura'
  storage.magia250 = 'Sarada: chidori'
  storage.magia300 = 'Susanoo: magatama magatama'
  storage.magia400 = 'Raitoningusufia'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Raitoningusutoraikuama'
  storage.special2 = 'Utsushi wa me no kyosei'
  storage.special3 = 'Raitoningusutoraikuama'
  storage.special4 = nil
  storage.magiastack = nil
  storage.fugaspell = 'Raitoningusutoraikuama'
  storage.buff = 'Sarada: susanoo'
  storage.buff2 = nil
  storage.AOE = 'Fenikkusufurawatekunikku'
  info('Load: Sarada')
end

setvocTsunade = function()
  storage.magia200 = 'Ten no itami no ashi'
  storage.magia250 = 'Yuka no hibiware'
  storage.magia300 = 'Adamantainfisuto'
  storage.magia400 = 'Sukaisupiakikku'
  storage.magiabijuu = 'Biju Attack'
  storage.special1 = 'Densetsu no Henrin'
  storage.special2 = 'Hyaku-gun no insho'
  storage.special3 = 'In no fuin: Kaijo'
  storage.special4 = 'Kuchiyose Katsuyu'
  storage.magiastack = nil
  storage.fugaspell = ''
  storage.SHEAL = 'Hyaku-gun no insho'
  storage.SHEAL1 = 'Shousen no Jutsu'
  storage.buff = 'Sozo no saisei'
  storage.buff2 = 'In no fuin: Kaijo'
  storage.AOE = 'Kentoshiki shogai'
  info('Load: Tsunade')
end


g_game.look(player)


--------------Comandos de Controle Remoto--------------

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
end)

onTalk(function(name, level, mode, text, channelId, pos)
  if channelId ~= 1 then return end
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