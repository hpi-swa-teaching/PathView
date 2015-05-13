switching
closeFlap
	self expandedFlap: false.
	self submorphs do: [:each | each hide].
	self changed.