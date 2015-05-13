explore buttons
createMultipleArgumentsButton: aCollection at: aNumber
	| button |
	button := SActionButtonLabelMorph 
				on: self 
				selector: #showChooseArgumentMenu:
				args: (Array with: aCollection)
				name: 'Args...'.
	self addMorph: button.
	button 
		extent: (self class controlWidth - self class borderOffset)@self class buttonHeight;
		position: (self definition position x + 
					self definition width + self class borderOffset - 1)@
					(self definition position y + aNumber);
		borderWidth: 0.
	button 
		setBalloonText: 'Choose an argument for exploration' 
		maxLineLength: 50.