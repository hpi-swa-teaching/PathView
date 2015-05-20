event handling
accept: aText from: aMorph 
	| name |
	aMorph == (self textMorphAt: 1) ifFalse: [^self].
	name := aText asString copyUpTo: Character cr.
	name isEmpty ifFalse: [self renameFromFirstTextMorph: name]