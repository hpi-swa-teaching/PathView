stepping
steppingNodeAndPositionDo: aBlock 
	| position node |
	node := self steppingNode.
	position := self steppingPosition
				ifNil: [0].
	aBlock value: node value: position