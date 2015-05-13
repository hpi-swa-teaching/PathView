testing
test07aTreeMapCreationFindRootMorph
	| rootMorph | 
	rootMorph := self testRunner findA: SPMRootMorph.
	self assert: rootMorph notNil.
	self assert: rootMorph lineMorph notNil.
	self assert: rootMorph == self testRunner model pathMap rootMorph.