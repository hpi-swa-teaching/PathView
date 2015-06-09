system events
categoryChanges: anEvent
	
	anEvent itemKind caseOf: {
		[ #method ] -> [ self updateAll. ]. "A method has been added or removed"
		[ #category ] -> [ " TODO Updating entries not implemented yet" ]. "A category has changed."
	}.