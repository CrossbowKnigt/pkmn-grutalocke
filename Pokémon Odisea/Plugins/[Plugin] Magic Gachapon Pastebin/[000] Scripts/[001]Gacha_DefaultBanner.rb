def defaultBannerConfig
  config  = {
      "banner" => {
              "name" => "Gachapón",
              "bg" => "Graphics/Battlebacks/champion1_bg",
              "rewards" => ["Graphics/Items/CHOICEBAND","Graphics/Items/MASTERBALL","Graphics/Items/LEFTOVERS"],
              "stars" => [5, 5, 5],
              "url" => nil,
              "descr" =>  "<ac><b>¡Increible Banner de prueba!</b></ac>\n¡Mira cuantos Pokémon! ¿No te parece super guay? ¡Puedes hacerte con todos dejándote el dinero en este banner!\n<ac>Disponible hasta el <c2=043c3aff>25-12-1995</c2>\n\n<u><b>Premios obtenibles:</b></u> \n*Bidoof 11.5%*\n*Goldeen 11.5%*\n*Ralts 11.5%*\n*Abra Especial 12%*\n*Pichu 28%*\n*Drowzee 28%*\n*Ekans 28%*\n*Eevee 6%*\n*Sandshrew 6%*\n*Dratini 4.5%*\n*Jolteon Especial 1.4%*\n*Max Éter 4.9%*\n*Kangskhan Especial 1.2%*\n*Gyarados Especial 0.9%*\n*Venusaur Especial 0.9%*\n*Master Ball 1.2%*</ac>\n\nNo nos hacemos responsables de los problemas que puedan surgir a partir de este juego del demonio. Úsese con responsabilidad."
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