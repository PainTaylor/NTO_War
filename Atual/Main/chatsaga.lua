chat1 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('lutar')
end)
schedule(1000, function()
NPC.say('iniciar')
end)
delay(1600)
end

chat2 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('ajudar')
end)
schedule(1000, function()
NPC.say('entregar')
end)
end

chat3 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('desafio')
end)
schedule(1000, function()
NPC.say('sim')
end)
end

chat4 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('entregar')
end)
end

chat5 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('sim')
end)
schedule(1000, function()
NPC.say('vamos')
end)
end

chat6 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('sim')
end)
schedule(1000, function()
NPC.say('ok')
end)
end

chat7 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('sim')
end)
schedule(1000, function()
NPC.say('yes')
end)
end

chat8 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('yes')
end)
schedule(1000, function()
NPC.say('pergaminho')
end)
schedule(1500, function()
NPC.say('pronto')
end)
end

chat9 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('yes')
end)
schedule(1000, function()
NPC.say('entregar')
end)
end

chat10 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('tutor')
end)
schedule(1000, function()
NPC.say('ninja')
end)
end

chat11 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('coisa')
end)
schedule(1000, function()
NPC.say('entregar')
end)
end

chat12 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('coisa')
end)
schedule(1000, function()
NPC.say('entregar')
end)
end

chat13 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('ajudar')
end)
schedule(1000, function()
NPC.say('continuar')
end)
end

chat14 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('continuar')
end)
schedule(1000, function()
NPC.say('ok')
end)
end

chat15 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('indo')
end)
schedule(1000, function()
NPC.say('vamos')
end)
end

chat16 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('problemas')
end)
schedule(1000, function()
NPC.say('ok')
end)
end

chat17 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('dele')
end)
schedule(1000, function()
NPC.say('ok')
end)
end

chat18 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('ajudar')
end)
schedule(1000, function()
NPC.say('ninja')
end)
end

chat19 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('ajudar')
end)
schedule(1000, function()
NPC.say('yes')
end)
delay(1100)
end

chat20 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('vamos')
end)
schedule(1000, function()
NPC.say('ok')
end)
end

chat21 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('ok')
end)
schedule(1000, function()
NPC.say('yes')
end)
delay(1100)
end

--------------Tsunade---------------

chatm1 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('missao 1')
end)
schedule(1000, function()
NPC.say('continuar')
end)
delay(1600)
end

chatm2 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('missao 2')
end)
schedule(1000, function()
NPC.say('okay')
end)
delay(1600)
end

chatm3 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('missao 3')
end)
schedule(1000, function()
NPC.say('ok')
end)
delay(1600)
end

chatm4 = function()
NPC.say('hi')
schedule(500, function()
NPC.say('missao 4')
end)
schedule(1000, function()
NPC.say('sim')
end)
delay(1600)
end

chatwar = function()
NPC.say('hi')
schedule(500, function()
NPC.say('guerra')
end)
schedule(1000, function()
NPC.say('vamos')
end)
delay(1600)
end

----------------------------------------

chatIbiqui = function()
NPC.say('hi')
schedule(500, function()
NPC.say('pais')
end)
schedule(1000, function()
NPC.say('Pais do Fogo')
end)
schedule(1500, function()
NPC.say('continuar')
end)
end

-----------------------------------------
travelkonoha = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Konoha Gakure')
	end)
	delay(2600)
end

travelsuna = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Suna Gakure')
	end)
	delay(2600)
end

travelvtakumi = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Vila Takumi')
	end)
	delay(2600)
end

travelMonteMyuboki = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Monte Myoboku')
	end)
	delay(2600)
end

travelforest = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Forest')
	end)
	delay(2600)
end

travelamegakure = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Amegakure no Sato')
	end)
	delay(2600)
end

travelsunacamp = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Suna Camp')
	end)
	delay(2600)
end

traveliwagakureisl = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Iwagakure Island')
	end)
	delay(2600)
end

travelYukigakure = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Yukigakure')
	end)
	delay(2600)
end

traveliwagakure = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Iwagakure')
	end)
	delay(2600)
end

travelvdf = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Vale do Fim')
	end)
	delay(2600)
end

travelkumogakure = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Kumogakure')
	end)
	delay(2600)
end

travelTsuki = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Tsuki no Shima')
	end)
	delay(2600)
end

travelTFogo = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Templo do Fogo')
	end)
	delay(2600)
end

travelKodai = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Kodai no Shima')
	end)
	delay(2600)
end

travelmoon = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Ilha da Lua')
	end)
	delay(2600)
end

travelgenbu = function()
	for _, spec in ipairs(getSpectators(posz())) do
		if spec:getName() == 'Minoru' then
			g_game.follow(spec)
		end
	end
	schedule(1000, function()
		NPC.say('hi')
	end)
	schedule(1500, function()
		NPC.say('Ilha Genbu')
	end)
	delay(2600)
end