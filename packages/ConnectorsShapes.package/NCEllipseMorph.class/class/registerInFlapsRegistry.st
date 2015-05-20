class initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(EllipseMorph	authoringPrototype		'Ellipse'			'An ellipse or circle')
						forFlapNamed: 'Supplies'.
						cl registerQuad: #(EllipseMorph	authoringPrototype		'Ellipse'			'An ellipse or circle')
						forFlapNamed: 'PlugIn Supplies'.]