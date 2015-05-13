auto connectors
optionallyOpenConnectors
	
	| classMorphs |
	classMorphs := self allClassMorphs.
	(self checkOpenConnectors: classMorphs) ifTrue: [
		classMorphs size = 1
			ifTrue: [ self openAssociations; openAncestors ]
			ifFalse: [
				self
					openInheritanceConnectionsWithAll: classMorphs;
					openAssociationConnectionsWithAll: classMorphs ] ].