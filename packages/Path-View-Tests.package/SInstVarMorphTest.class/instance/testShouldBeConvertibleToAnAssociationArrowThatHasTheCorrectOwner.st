tests
testShouldBeConvertibleToAnAssociationArrowThatHasTheCorrectOwner
	| associationArrow |
	self mock: #openInHand of: Morph toReturn: [:i | i] during: [
	self 
		mock: #setCorrectOwnerForConnections: 
		of: SAssociationConnector 
		toReturn: [:receiver | associationArrow := receiver]
		during: [
			instance openTypeMorph.
			self assert: [associationArrow owner = classMorph owner]]].