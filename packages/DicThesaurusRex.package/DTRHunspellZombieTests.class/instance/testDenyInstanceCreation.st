testing
testDenyInstanceCreation
	self should: [DTRHunspellZombie new] raise: Warning
		description: 'You shall not create new zombies for your zombie army.'