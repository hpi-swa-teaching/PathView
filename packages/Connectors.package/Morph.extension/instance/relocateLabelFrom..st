*connectors-labels
relocateLabelFrom: aRectangle
	"Given a prospective label location, answer a new rectangle which doesn't overlap me"
	| newBounds nudge steps |
	newBounds := aRectangle.
	steps := aRectangle extent r truncated.
	[ (nudge := self nudgeForLabel: newBounds) isZero or: [ steps < 0 ] ]
		whileFalse: [ newBounds := newBounds translateBy: nudge.
			steps := steps - 1 ].
	steps < 0 ifTrue: [ ^aRectangle ].
	^ newBounds
