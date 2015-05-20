*connectorstools-menus
makeButton: aMouseButtonEvent 
	((Smalltalk at: #NCMakerButton ifAbsent: [ ^nil ])
		fromPrototype: self) openInHand