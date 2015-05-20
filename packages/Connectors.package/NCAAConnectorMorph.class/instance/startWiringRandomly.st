buttonActions
startWiringRandomly
	self delete.
	^(self class random)
		startWiring;
		yourself