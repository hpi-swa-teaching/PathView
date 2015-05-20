as yet unclassified
rebuild

	| buttonColor menu |
	buttonColor := color lighter.
	
	self removeAllMorphs.
	self addAColumn: {
		self lockedString: ('Connector Properties for {1}' translated format:{myTarget name}).
	}.
	
	menu := MenuMorph new defaultTarget: myTarget.
	myTarget addYellowButtonMenuItemsTo: menu event: ActiveHand lastEvent.

	self addARow: { self inAColumn: (menu  submorphs collect: [ :item | item duplicateMorph: ActiveHand lastEvent ]) }.

	self addARow: {
		self inAColumn: {
			self addARow: {
				self 
					buttonNamed: 'Accept' translated action: #doAccept color: buttonColor
					help: 'keep changes made and close panel' translated.
				self 
					buttonNamed: 'Cancel' translated action: #doCancel color: buttonColor
					help: 'cancel changes made and close panel' translated.
			}.
		}.
	}.
