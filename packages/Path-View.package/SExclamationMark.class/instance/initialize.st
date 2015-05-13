initialization
initialize

	super initialize.
	klass := ProtoObject.
	exclamation := ('!' asMorph
						font: ((StrikeFont defaultSized: 32)
								emphasis: TextEmphasis bold);
						color: Color red).
	self
		addMorph: exclamation;
		color: Color white darker;
		listDirection: #leftToRight.
	exclamation := exclamation addFlexShell.
	exclamation scale: 5.