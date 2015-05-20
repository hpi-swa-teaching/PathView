event handling
accept: aText 
	| name |
	name := aText asString copyUpTo: Character cr.
	name isEmpty ifFalse: [self renameFromFirstTextMorph: name]