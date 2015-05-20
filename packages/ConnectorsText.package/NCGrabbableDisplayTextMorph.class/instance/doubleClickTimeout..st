event handling
doubleClickTimeout: evt 

	evt hand lastEvent anyButtonPressed ifFalse: [ ^super mouseDown: evt ]