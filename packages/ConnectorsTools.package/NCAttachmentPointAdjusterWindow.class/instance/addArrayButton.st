buttons
addArrayButton
	^SimpleButtonMorph new
		target: self;
		actionSelector: #addArray;
		label: 'Add Array';
		actWhen: #buttonDown;
		cornerStyle: #square;
		color: Color gray lighter;
		borderWidth: 3;
		borderColor: #raised;
		vResizing: #spaceFill;
		yourself.
