instance creation
openFor: anEntryOrClassMorph connectedTo: aMorph
	"Centrally and generically avoid creating doubled connectors. Not the best programming style, but connectors
	are created throughout the system and it would be hard to do that in a controlled fashion."
	
	^ (self existingConnectorFrom: anEntryOrClassMorph to: aMorph)
		ifNil: [ self privateCreateFor: anEntryOrClassMorph to: aMorph ]