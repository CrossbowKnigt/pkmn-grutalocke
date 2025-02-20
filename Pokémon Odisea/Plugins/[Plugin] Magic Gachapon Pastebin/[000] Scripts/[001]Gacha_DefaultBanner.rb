def defaultBannerConfig
  config  = {
      "banner" => {
              "name" => "Items a gogó",
              "bg" => "Graphics/Battlebacks/champion1_bg",
              "rewards" => ["Graphics/Items/CHOICEBAND","Graphics/Items/MASTERBALL","Graphics/Items/LEFTOVERS"],
              "stars" => [5, 5, 5],
              "url" => nil,
              "descr" =>  "<ac><b>¡Increíble Banner!</b></ac>\n¡Mira cuántos objetos! ¿No te parece súper guay? ¡Puedes hacerte con todos dejándote el dinero en este banner!\n<ac>Disponible hasta el <c2=043c3aff>25-12-1995</c2>\n\n<u><b>Premios obtenibles:</b></u> \n*Tier 1 (35%)*\nPoción, Antídoto, Antiparalizador, Antiquemar, Antihielo, Despertar, Poké Ball, Baya Aranja, Baya Meloc, Baya Zreza, Baya Caoca, Baya Zanama, Baya Perasi, Zumo de Baya, Repelente, Pequeño Hongo, Polvo Estelar, Éter, Elixir, Baya Zanama\n\n*Tier 2 (40%)*\nBola Humo, Superpoción, Agua Fresca, Refresco, Máx. Éter, Máx. Elixir, Superrepelente, Perla, Hueso Raro, Globo Helio, Baya Pómago, Baya Algama, Baya Ispero, Baya Meluce, Baya Tamate, Muñeco Poké\n\n*Tier 3 (15%)*\nRevivir, Hiperpoción, Limonada, Máx. Repelente, Perla Grande, Pepita, Trozo Estrella, Polvo Brillo, Lodo Negro, Cinta Pericia, Lente Elección, Carbón, Agua Mística, Imán, Semilla Milagro, Antihielo, Cinta Fuerte, Perla Misteriosa, Mineral Evolutivo, Leche Mu-mu, Caramelo Raro, Ultraball, Baya Zidra, Escudo Habilidad, Amuleto Claro, Gafas de Seguridad\n\n*Tier 4 (7%)*\nHongo Grande, Perla Reluciente, Casco Dentado, Chaleco Asalto, Huevo Suerte, Monedero Amuleto, Campana Alivio, Campana Concha, Llama Esfera, Toxisfera, Máx. Revivir, Banda Focus, PP Máx., Cápsula Habilidad, Mineral Evolutivo\n\n*Tier 5 (3%)*\nTrozo Cometa, Pepita Grande, Cinta Elegida, Gafas Elegidas, Pañuelo Elegido, Restos, Vidaesfera, Master Ball, Parche Habilidad\n\nNo nos hacemos responsables de los problemas que puedan surgir a partir de este juego del demonio. Úsese con responsabilidad."
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
