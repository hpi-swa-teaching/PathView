menu
menuMorphFor: aTestMapMorph
	aTestMapMorph == self ifTrue: [^ self removeMenuMorph]. "Just a click on the menu morph"
	self menuMorph 
		ifNil: [self addMenuMorphOn: aTestMapMorph]
		ifNotNil: [
			self menuMorph targetMorph == aTestMapMorph
				ifTrue: [self removeMenuMorph]
				ifFalse: [self 
						removeMenuMorph;
						addMenuMorphOn: aTestMapMorph]].