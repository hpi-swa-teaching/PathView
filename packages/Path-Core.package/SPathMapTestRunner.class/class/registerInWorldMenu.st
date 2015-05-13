initialization
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		class registerOpenCommand: (Array 
			with: 'PathMap' 
			with: (Array
				with: self
				with: #open)) ].