associations
openAssociationConnectionsTo: classMorph
	"Open all association-connectors directed from the receiver to classMorph.
	Return all newly opened connectors."
	
	classMorph = self ifTrue: [ ^ OrderedCollection new ].
	^ (klass allInstVarNames asOrderedCollection withIndexCollect: [ :name :idx |
		(self isAssociatedWith: classMorph overVariable: name) ifTrue: [
			(self variableMorphFor: self visualizedClass -> name)
				ifNotNilDo: [ :variableMorph |
					variableMorph openInstVarAssociationTo: classMorph ] ] ])
	reject: #isNil