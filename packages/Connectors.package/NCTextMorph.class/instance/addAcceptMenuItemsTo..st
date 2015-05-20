menus
addAcceptMenuItemsTo: aCustomMenu 
	aCustomMenu 
		addUpdating: #acceptOnCRString
		target: self
		action: #acceptOnCROnOff.
	aCustomMenu 
		addUpdating: #acceptOnFocusLossString
		target: self
		action: #acceptOnFocusLossOnOff