initialize-release
initialize

	self id: -1.
	self nextCalls: OrderedCollection new.
	self views: Dictionary new.
	self profiles: Dictionary new.
	self selectedView: #classes.
	self selectedProfile: #normal.