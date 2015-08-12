players = Player.create([
	{name: "Alvaro"},
	{name: "Mario Bros"},
	{name: "Mickey Mouse"},
	{name: "Donald"},
	{name: "Pluto"},
	{name: "Lu"},
	{name: "Peter Pan"},
	{name: "Ciderella"}
])



matches = Match.create([
	{winner: players[0], loser: players[1], winner_faction: 'protoss', loser_faction: 'terrans'},
	{winner: players[0], loser: players[1], winner_faction: 'protoss', loser_faction: 'terrans'},
	{winner: players[1], loser: players[0], winner_faction: 'protoss', loser_faction: 'terrans'},
	{winner: players[1], loser: players[0], winner_faction: 'protoss', loser_faction: 'terrans'}
])