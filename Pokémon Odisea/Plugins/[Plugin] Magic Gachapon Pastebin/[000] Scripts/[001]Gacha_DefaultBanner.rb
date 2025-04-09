def defaultBannerConfig
  config  = {
      "banner" => {
              "name" => "Items a gogó",
              "bg" => "Graphics/Battlebacks/champion1_bg",
              "rewards" => ["Graphics/Items/CHOICEBAND","Graphics/Items/MASTERBALL","Graphics/Items/LEFTOVERS"],
              "stars" => [5, 5, 5],
              "url" => nil,
              "descr" =>  "<ac><b>¡Increíble Banner!</b></ac>\n¡Mira cuántos objetos! ¿No te parece súper guay? ¡Puedes hacerte con todos dejándote el dinero en este banner!\n<ac>Disponible hasta el <c2=043c3aff>25-12-1995</c2>\n\n<u><b>Premios obtenibles:</b></u> \n*Tier 1 (35%)*\nPoción, Antídoto, Antiparalizador, Antiquemar, Antihielo, Despertar, Poké Ball, Baya Aranja, Baya Meloc, Baya Zreza, Baya Atania, Baya Safre, Baya Perasi, Baya Caquic, Zumo de Baya, Repelente, Miniseta, Polvo Estelar, Éter, Elixir, Baya Zanama\n\n*Tier 2 (40%)*\nBola de Humo, Súperball, Cura Total, Agua Fresca, Refresco, Súperpoción, Baya Ziuela, Baya Higog, Baya Wiki, Baya Ango, Baya Guaya, Baya Pabaya, Súperrepelente, Seta grande, Perla, Hueso Raro, Globo Helio, Éter Máximo, Élixir Máximo, Baya Grana, Baya Algama, Baya Íspero, Baya Meluce, Baya Uvav, Baya Tamate, Pokémuñeco\n\n*Tier 3 (15%)*\nRevivir, Hiperpoción, Limonada, Máx. Repelente, Perla Grande, Pepita, Trozo Estrella, Polvo Brillo, Refleluz, Lodo Negro, Cinta Experto, Periscopio, Carbón, Agua Mística, Imán, Semilla Milagro, Antiderretir, Cinturón Negro, Flecha Venenosa, Arena Fina, Pico afilado, Cuchara Torcida, Polvo Plata, Piedra Dura, Hechizo, Colmillo Dragón, Gafas de Sol, Revestimiento Metálico, Pañuelo de Seda, Pluma Feérica, Leche Mu-mu, PP Máximos, Ultraball, Baya Zidra, Escudo Habilidad, Amuleto Puro, Gafa Protectora\n\n*Tier 4 (7%)*\nSeta Aroma, Sarta de Perlas, Casco Dentado, Chaleco Asalto, Huevo Suerte, Moneda Amuleto, Cascabel Alivio, Campana Concha, Llamasfera, Toxisfera, Máx. Revivir, Banda Focus, PP Máx., Cápsula Habilidad, Mineral Evolutivo\n\n*Tier 5 (3%)*\nFragmento Cometa, Maxipepita, Cinta Elección, Gafas Elección, Pañuelo Elección, Restos, Vidaesfera, Master Ball, Parche Habilidad\n\nNo nos hacemos responsables de los problemas que puedan surgir a partir de este juego del demonio. Úsese con responsabilidad."
              }
      }
  return config
end

def defaultBanner
  prob = rand(113)
  case prob
  when (0...46) #Tier 1 con un 35%
    rewards = [:POTION, :ANTIDOTE, :PARLYZHEAL, :BURNHEAL, :ICEHEAL, :AWAKENING, :POKEBALL, :ORANBERRY, :PECHABERRY, :CHERIBERRY, :CHESTOBERRY, :RAWSTBERRY, :ASPEARBERRY, :PERSIMBERRY, :BERRYJUICE, :REPEL, :TINYMUSHROOM, :STARDUST, :ETHER, :ELIXIR, :LEPPABERRY]
    result = rewards[rand(rewards.length)]
    itemReward(result,1)
  when (47...81) #Tier 2 con un 40%
    rewards = [:SMOKEBALL, :GREATBALL, :FULLHEAL, :FRESHWATER, :SODAPOP, :SUPERPOTION, :LUMBERRY, :FIGYBERRY, :WIKIBERRY, :MAGOBERRY, :AGUAVBERRY, :IAPAPABERRY, :SUPERREPEL, :BIGMUSHROOM, :PEARL, :RAREBONE, :AIRBALLOON, :MAXETHER, :MAXELIXIR, :POMEGBERRY, :KELPSYBERRY, :QUALOTBERRY, :HONDEWBERRY, :GREPABERRY, :TAMATOBERRY, :POKEDOLL]
    result = rewards[rand(rewards.length)]
    itemReward(result,2)
  when (82...106) #Tier 3 con un 15%
    rewards = [:REVIVE, :HYPERPOTION, :LEMONADE, :MAXREPEL, :BIGPEARL, :NUGGET, :STARPIECE, :BRIGHTPOWDER, :LIGHTCLAY, :BLACKSLUDGE, :EXPERTBELT, :SCOPELENS, :CHARCOAL, :MYSTICWATER, :MAGNET, :MIRACLESEED, :NEVERMELTICE, :BLACKBELT, :POISONBARB, :SOFTSAND, :SHARPBEAK, :TWISTEDSPOON, :SILVERPOWDER, :HARDSTONE, :SPELLTAG, :DRAGONFANG, :BLACKGLASSES, :METALCOAT, :SILKSCARF, :FAIRYFEATHER, :MOOMOOMILK, :PPUP, :ULTRABALL, :SITRUSBERRY, :ABILITYSHIELD, :CLEARAMULET, :SAFETYGOGGLES]
    result = rewards[rand(rewards.length)]
    itemReward(result,3)
  when (107...111) #Tier 4 con un 7%
    rewards = [:BALMMUSHROOM, :PEARLSTRING, :ROCKYHELMET, :ASSAULTVEST, :LUCKYEGG, :AMULETCOIN, :SOOTHEBELL, :SHELLBELL, :FLAMEORB, :TOXICORB, :MAXREVIVE, :FOCUSSHASH, :PPMAX, :ABILITYCAPSULE, :EVIOLITE]
    result = rewards[rand(rewards.length)]
    itemReward(result,4)
  when (112...113) #Tier 5 con un 3%
    rewards = [:COMETSHARD, :BIGNUGGET, :CHOICEBAND, :CHOICESPECS, :CHOICESCARF, :LEFTOVERS, :LIFEORB, :MASTERBALL, :ABILITYPATCH]
    result = rewards[rand(rewards.length)]
    itemReward(result,5)
 end  
end
