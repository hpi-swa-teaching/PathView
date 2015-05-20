menus
addGraphModelYellowButtonItemsTo: aCustomMenu event: evt
	self graphModel
		ifNil: [aCustomMenu add: 'duplicate' translated action: #duplicateMorph:]
		ifNotNil: [
			self graphModel addModelYellowButtonMenuItemsTo: aCustomMenu
				forMorph: self
				hand: evt hand.
			aCustomMenu add: 'duplicate model and view' translated action: #duplicateMorph:.
			aCustomMenu addLine ].
