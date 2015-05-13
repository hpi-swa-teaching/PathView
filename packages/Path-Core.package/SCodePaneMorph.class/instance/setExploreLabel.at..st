explore buttons
setExploreLabel: aString at: aNumber
	| label |
	label := StringMorph contents: aString.
	self addMorph: label.
	label position:  (self getXPosForControlPanel - self class borderOffset + 
						(self class controlWidth / 2) - (label width / 2))@
					(aNumber + self class borderOffset + 
						(self class buttonHeight / 2) - (label height / 2)).