menus
selectPointWith: aHand thenDo: aBlock
	"Allow the user to select a point, then pass the point to aBlock.
	aBlock might never get called, if the handle gets deleted."
	| handle |
	handle := NewHandleMorph new 
		followHand: aHand
		forEachPointDo: [ :newPoint |  ]
		lastPointDo: aBlock.
	aHand attachMorph: handle.
	handle startStepping.