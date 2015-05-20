button actions
writeConstructor

	| string name sample |
	sample := self sampleGlyph.
	sample ifNil: [ ^self ].
	name := FillInTheBlankMorph request: 'Install in which selector?'.

	string := String streamContents: [ :stream |
		stream nextPutAll: name; cr; tab.
		stream nextPutAll: '"glyph '; print: glyph glyphIndex; nextPutAll: ' from '; nextPutAll: font name; nextPut: $"; cr.
		stream nextPutAll: '	^'.
		sample storeOn: stream.
		self clickPoints isEmpty ifFalse: [ stream nextPutAll: '"clicks: '.
			transformedClickPoints do: [ :p | stream store: (p roundTo: 0.01); space.  ].
			stream nextPut: $"
		]
	].

	name isEmpty ifTrue: [
	Clipboard clipboardText: string.
	^self inform: 'Constructor text is on clipboard.' ].

	NCLineArrowGlyph class compile: string classified: 'arrow forms' 