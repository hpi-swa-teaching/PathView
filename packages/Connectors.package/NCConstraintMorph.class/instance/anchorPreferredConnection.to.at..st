connection
anchorPreferredConnection: sel to: target at: aPoint
	"this is called at the end of the user selection of a relative or absolute preferred connection point.
	Answer my new preferredConnection."

	| relPoint pref |

	relPoint := aPoint - (self globalPointToLocal: (target localPointToGlobal: (target topLeft))).
	self input: target.
	self preferredConnection: (pref := { sel . relPoint }).
	self perform: sel with: relPoint.
	^pref
