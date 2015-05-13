menu
addMenuMorphOn: aTestMapMorph

	self menuMorph: (SPMMenuMorph on: aTestMapMorph).
	self addMorph: self menuMorph.
	self menuMorph position: aTestMapMorph position x @ 
								(aTestMapMorph position y - self menuMorph height).