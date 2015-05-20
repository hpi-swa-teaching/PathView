connection
reAnchorPreferredConnectionTo: aMorph at: aPoint
	"Answer my preferredConnection, if any"

	| pref |
	(pref := self preferredConnection) ifNil: [ ^nil ].
	pref first numArgs = 0 ifTrue: [ ^pref ].
	^self anchorPreferredConnection: pref first to: aMorph at: aPoint.