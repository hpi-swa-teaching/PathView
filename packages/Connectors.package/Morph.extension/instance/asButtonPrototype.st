*connectors-dropping/grabbing
asButtonPrototype
	"I have been dropped on a NCMakerButton as a prototype. Return a duplicate of me ready to be used as a prototype"
	| newMe |
	newMe := self usableSiblingInstance2
		fullBounds;
		isPartsDonor: true;
		stopSteppingSelfAndSubmorphs;
		suspendEventHandler;
		formerOwner: nil;
		formerPosition: nil;
		removeProperty: #undoGrabCommand;
		disconnectAllConstraints;
		yourself.
	newMe graphModel ifNotNilDo: [ :gm | gm context: nil ].
	^newMe