protected-policy
setCorrectOwnerForConnections: connections
	"Try to fix adding the receiver to the wrong owner. Would occur when the FIRST morph in connections
	has no owner -- the receiver would be added to the world, instead of the owner of the SECOND morph."
	
	super setCorrectOwnerForConnections:
		((connections select: [ :each | each owner class == SClassDiagram ]) ifEmpty: [ connections ]).