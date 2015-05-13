building-customs
addTitle: aString toFlap: aSymbol inFrame: aRectangle
	| title flap |
	flap := self getFlap: aSymbol.
	title := SLabelMorph label: aString.
	title labelMorphs do: [:each | 
		each
			fontName: Preferences standardDefaultTextFont familyName 
			size: 100].
	self setFrame: aRectangle in: title.
	flap addMorph: title.
	title 
		hResizing: #rigid;
		width: 145; "ToDo: Change this hard value!"
		hide.

