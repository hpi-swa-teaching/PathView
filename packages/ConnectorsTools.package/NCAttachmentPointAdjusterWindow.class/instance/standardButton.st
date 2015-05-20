buttons
standardButton
	"self standardButton
		actionSelector: #toggleAttachmentMode;
		wordingSelector: #attachmentModeString"

	^UpdatingSimpleButtonMorph new
		target: self;
		actWhen: #buttonDown;
		cornerStyle: #square;
		color: Color gray lighter;
		borderWidth: 3;
		borderColor: #raised;
		vResizing: #spaceFill;
		yourself.
