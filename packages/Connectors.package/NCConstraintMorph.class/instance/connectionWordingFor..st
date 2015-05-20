menus
connectionWordingFor: sel
	"sel is the desired menu choice"
	| str selector |
	selector := self preferredConnection ifNotNilDo: [ :pc | pc first ].

	(sel == #connectToNothing) ifTrue: [
		^(selector == #connectToNothing)
			ifTrue: [ '<yes>', 'connect to nothing' translated ]
			ifFalse: [ '<no>', 'connect to nothing' translated ]
	].

	(sel == #noConnectionPreference) ifTrue: [
		^selector
			ifNil: [ '<yes>', 'no connection preference' translated ]
			ifNotNil: [ '<no>', 'no connection preference' translated ]
	].

	str := (sel = selector) ifTrue: [ '<yes>' ] ifFalse: [ '<no>' ].
	str := str, (sel splitOnCapBoundaries) translated.
	^str