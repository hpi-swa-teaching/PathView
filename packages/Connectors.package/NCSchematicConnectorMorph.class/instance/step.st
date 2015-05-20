stepping and presenter
step
	"Make a junction dot if I'm tied to another Connector,
	otherwise get rid of my end decorations"
	| newArrowNames |
	super step.
	newArrowNames := constraints collect: [ :const |
		(const input notNil and: [ const input isConnector ])
			ifTrue: [ const connectToNearestOrthogonalPoint.
				const preferredConnection: #(#connectToNearestOrthogonalPoint).
				 #junctionDot ]
			ifFalse: [ const preferredConnection: nil.
				#noArrow  ] ].
	self arrowNames: newArrowNames.
