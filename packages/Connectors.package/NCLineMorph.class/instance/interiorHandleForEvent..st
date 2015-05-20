editing
interiorHandleForEvent: anEvent 
	"Answer a NCCurveHandleMorph that can be used to adjust me at the 
	given point."
	^self interiorHandleForPosition: anEvent position addAllowed: anEvent shiftPressed