menu
addGraphModelYellowButtonItemsTo: aCustomMenu event: evt

	self graphModel ifNotNilDo: [ :gc |
		gc addModelYellowButtonMenuItemsTo: aCustomMenu
				forMorph: self
				hand: evt hand.
			aCustomMenu addLine].

	^aCustomMenu