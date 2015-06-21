noteResizing
toggleNote

	self isCollapsed
		ifTrue: [self expandNote]
		ifFalse: [self collapseNote].
	self isCollapsed: self isCollapsed not