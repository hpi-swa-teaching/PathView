morphic
createCloseButton

	| closeButton |
	closeButton := SActionButtonLabelMorph on: self selector: #close name: 'X'.
	self addMorph: closeButton.
	closeButton 
		extent: (self class buttonWidth -1)@self class buttonWidth;
		position: (self position x + self width - closeButton width) @ (self position y);
		color: self color.
	