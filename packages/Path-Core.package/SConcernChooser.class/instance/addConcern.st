concern button
addConcern
	| concern |
	concern := (UIManager default request: 'Please insert a concern name:').
	(self concernGroups at: self selectedGroup) add: concern.
	self concernColors at: concern put: (Color h: 360 atRandom s: 1.0 v: 1.0).
	self refreshDeselectedConcernTree.

	