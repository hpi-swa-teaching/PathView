private
getStringFor: aNumber

	| twoDigits |
	twoDigits := aNumber \\ 100.
	^ (twoDigits < 10 ifTrue: ['  '] ifFalse: ['']), twoDigits asString.