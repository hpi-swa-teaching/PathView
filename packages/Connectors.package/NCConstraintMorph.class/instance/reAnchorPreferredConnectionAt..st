connection
reAnchorPreferredConnectionAt: aPoint
	"Answer my preferredConnection, if any"

	| pref |
	(pref := self preferredConnection) ifNil: [ ^nil ].
	pref first numArgs = 0 ifTrue: [ ^pref ].
	^self anchorPreferredConnection: pref first at: aPoint.
