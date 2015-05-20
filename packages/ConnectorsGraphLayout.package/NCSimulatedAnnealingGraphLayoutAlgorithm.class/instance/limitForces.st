layout
limitForces
	| mag |
	mag := self magnitudeOfVector: self forces.
	mag > temperature 
		ifTrue: 
			[mag := temperature / mag.
			self forces: self forces * mag]