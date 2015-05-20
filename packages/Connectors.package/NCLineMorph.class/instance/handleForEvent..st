editing
handleForEvent: anEvent 
	"Answer a NCCurveHandleMorph that can be used to adjust me at the 
	given point."
	^self handleForPosition: anEvent position addAllowed: anEvent shiftPressed