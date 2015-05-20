buttons
makeButtons
	| aligner |
	aligner := AlignmentMorph newRow.
	aligner
		color: Color white;
		vResizing: #spaceFill;
		cellInset: 4@4;
		hResizing: #spaceFill;
		addMorphBack: self gridButton;
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: self addArrayButton;
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: self addAttacherButton;
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: self deleteAttachersButton;
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: self attachmentModeButton;
		addMorphBack: AlignmentMorph newVariableTransparentSpacer;
		addMorphBack: (joystick := JoystickMorph new extent: 40@40; toggleAutoCenter; moveHandleToCenter).
	^aligner.
