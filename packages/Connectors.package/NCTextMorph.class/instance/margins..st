accessing
margins: newMargins
	super margins: newMargins.
	(owner respondsTo: #forceRedraw) ifTrue: [ owner forceRedraw ]