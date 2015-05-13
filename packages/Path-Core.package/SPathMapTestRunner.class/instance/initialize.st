initialization
initialize
	super initialize.
	"self suitesAt: 1 put: true. ""Select all tests"
	self pathMap: (SPMPathMap on: self).
	self addDependent: self pathMap.
	self update. "Changed does not work'"
	self pathMap project includesTests
		ifFalse: [self inform: 'The current project does not include any test case.', 
							String cr, 
							'PathMap will be limited to static analysis only.'].