buttons
addAttacherButton
	^SimpleButtonMorph new
		target: self;
		actionSelector: #addAttacher;
		label: 'Add';
		actWhen: #buttonDown;
		cornerStyle: #square;
		color: Color gray lighter;
		borderWidth: 3;
		borderColor: #raised;
		vResizing: #spaceFill;
		yourself.
