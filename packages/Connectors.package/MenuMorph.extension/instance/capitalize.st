*connectors-accessing
capitalize
	self items do:[:anItem | (anItem isKindOf: StringMorph) ifTrue: [ anItem contents: (anItem contents capitalized) ] ].
	^ nil