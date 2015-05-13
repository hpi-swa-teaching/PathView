explore buttons
createObjectExploreButtonWith: aCollection name: aString atYPos: aNumber
	| button |
	button := SActionButtonLabelMorph 
				on: self 
				selector: #showObjectExploration:title:objectIndex:
				args: aCollection
				name: aString.
	self addMorph: button.
	button 
		extent: (self class controlWidth - self class borderOffset)@
					self class buttonHeight;
		position: (self definition position x + self definition width + 
					self class borderOffset - 1)@
						(self definition position y + aNumber);
		borderWidth: 0.
	button labelMorph position: (button position x + 2)@(button labelMorph position y).
	^ button