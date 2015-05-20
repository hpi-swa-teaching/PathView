*connectors-attachment points
embeddedPlayersDo: aBlock
	self allMorphsWithPlayersDo: [ :m :p | m ~~ self ifTrue: [ aBlock value: p ]]