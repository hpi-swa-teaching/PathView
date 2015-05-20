initialization
accept: aText from: aMorph
	| name |
	aMorph == (self textMorphAt: 1) ifFalse: [ ^self ].
	name := (aText asString copyUpTo: Character cr) withBlanksTrimmed.
	(Smalltalk hasClassNamed: name) ifTrue: [
		self setNamePropertyTo: (name contractTo: 20).
		self className: name asSymbol	]
