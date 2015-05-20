accessing
font: aFont 
	glyph := nil.
	transform := nil.
	endPoint := nil.
	joinPoint := nil.
	sampleLine ifNotNilDo: [:s | s arrows: { 
						nil.
						nil}].
	aFont isTTCFont ifFalse: [^self inform: 'You must choose a TrueType font'].
	font := aFont ttcDescription.
	fontSample ifNotNil: [fontSample delete].
	self addMorph: (fontSample := TTSampleFontMorph fontWithoutString: font)
		fullFrame: self fontFrame.
	fontSample 
		on: #mouseUp
		send: #selectGlyphBlock:event:from:
		to: fontSample
		withValue: [:g | self glyph: g].
	self changed