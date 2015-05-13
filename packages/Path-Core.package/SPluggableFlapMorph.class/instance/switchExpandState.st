switching
switchExpandState
	self expandedFlap: self expandedFlap not.
	self isExpanded
		ifTrue: [self submorphs do: [:each | each show].
				self closeAllOtherFlaps]
		ifFalse: [self submorphs do: [:each | each hide]].
	self changed.
