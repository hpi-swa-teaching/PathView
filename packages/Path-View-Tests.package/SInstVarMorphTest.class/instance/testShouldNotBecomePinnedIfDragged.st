as yet unclassified
testShouldNotBecomePinnedIfDragged
	
	self mock: #openInHand of: Morph toReturn: [:i | i] during: [
	self mock: #setCorrectOwnerForConnections: of: SAssociationConnector toReturn: [SAssociationConnector basicNew] during: [
		instance startDrag: InputSensor default.
		self deny: instance isPinned]].