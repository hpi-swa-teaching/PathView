toolbar
uniqueClassnameBasedOn: baseName
	
	| name number |
	name := baseName asSymbol.
	number := 1.
	[ Smalltalk includesKey: name ]
		whileTrue: [
			name := (baseName, number asString) asSymbol.
			number := number + 1 ].
	^ name