accessing
lowerTextHidden
	| tms |
	(tms := self textMorphs) size <= 1 ifTrue: [ ^false ].
	^tms last visible not