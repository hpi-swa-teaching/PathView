system events
methodOrCategoryEvent: anEvent
	
	anEvent itemKind = #method
		ifFalse: [
			self flag: #todo. "ClassOrganizer>>#renameCategory:toBe: does not send events!?"
			anEvent isRenamed ifTrue: [category := anEvent newName ] ].
	self updateAll.