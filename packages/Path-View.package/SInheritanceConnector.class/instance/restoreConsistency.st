updating
restoreConsistency
	
	super restoreConsistency
		ifFalse: [ "Recreate the connector to make sure."
			self abandon.
			(self targetMorph isSuperClassOf: self sourceMorph)
				ifTrue: [ SInheritanceConnector openFor: self sourceMorph connectedTo: self targetMorph ] ].
	^ true