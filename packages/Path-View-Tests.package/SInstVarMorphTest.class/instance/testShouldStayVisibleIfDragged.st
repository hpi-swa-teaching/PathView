tests
testShouldStayVisibleIfDragged
	
	self mock: #openInHand of: Morph toReturn: [:i | i] during: [
	self mock: #setCorrectOwnerForConnections: of: SAssociationConnector toReturn: [SAssociationConnector basicNew] during: [
		instance startDrag: InputSensor default.
		self assert: [instance wantsToBeShown]]].