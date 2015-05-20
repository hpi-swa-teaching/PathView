menus
addFitAndWrapItemsTo: aCustomMenu
	aCustomMenu 
		addUpdating: #autoFitString
		target: self
		action: #autoFitOnOff.
	aCustomMenu 
		addUpdating: #wrapString
		target: self
		action: #wrapOnOff.