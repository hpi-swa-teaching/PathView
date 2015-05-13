label
createExclamationMark
	| violationMorph |
	self callNode hasViolations ifFalse: [^ self].
	violationMorph := SPMViolationMorph on: self callNode violations.
	self addMorph: violationMorph.
	"Place in center of lines of code"
	violationMorph position: (violationMorph position x + 19 )@
								(violationMorph position y + 2).