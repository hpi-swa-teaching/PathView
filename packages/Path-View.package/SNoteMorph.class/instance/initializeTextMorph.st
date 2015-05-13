initialization
initializeTextMorph
	
	textMorph := (PluggableTextMorph new
		on: self
		text: #contentText
		accept: #contentText:
		readSelection: nil
		menu: nil)
		font: Preferences standardCodeFont;
		borderColor: Color lightGray;
		borderWidth: 1;
		color: Color transparent;
		hShowScrollBar;
		yourself.