event handling
mouseUp: anEvent
	super mouseUp: anEvent.
	self dropDownMorph newSelectedEntry: self labelMorph contents.