submorphs-add/remove
toggleHandles
	self showingHandles
		ifTrue: [ self removeHandles ]
		ifFalse: [ self addHandles ]