class functions
iconForClass: anInteger
	| klass icon colors |
	self methodColors ifNil: [^ nil].
	klass := self classList at: anInteger.
	klass ifNil: [^ nil].
	colors := self getAllMethodColorsFor: klass withBlanksTrimmed asSymbol.
	colors ifEmpty: [^ nil].
	icon := Form extent: 15@15 depth: 32.
	icon fillColor: (SPMHighestColorStrategy forColors: colors).
	^ icon