initialization
initializeTextMorph
	
	| textMorph |
	textMorph := PluggableTextMorph new
		on: self
		text: #contentText
		accept: #contentText:
		readSelection: nil
		menu: nil.
	self textMorph: (textMorph 
		font: Preferences standardCodeFont;
		borderColor: Color lightGray;
		borderWidth: 1;
		color: Color transparent;
		hShowScrollBar;
		yourself).
	self setText: ''