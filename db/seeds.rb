
recipientsList = ["Skarbówka", "Współmałżonek", "Partner",
"Ksiądz", "Prokuratura", "Rodzice", "ZUS", "Policja",
"Straż Miejska", "Straż Pożarna", "CBA", "CBS",
"MOPS", "Szkoła", "Pracodawca", "Parlament Europejski",
"GreenPeace", "NiebieskaLinia", "Sanepid"]

recipientsList.each {|el| FactoryBot.create(:recipient, name: el) }

