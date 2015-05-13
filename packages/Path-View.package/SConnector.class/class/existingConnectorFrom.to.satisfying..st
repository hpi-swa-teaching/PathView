instance creation
existingConnectorFrom: source to: target satisfying: aBlock
	"Ugly access to all classMorphs in the current diagram, see comment in #openFor:connectedTo:.
	aBlock can be used to inject additional conditions, which might be necessary for certain subclasses."
	
	(self allClassMorphsFrom: source or: target)
		do: [ :classMorph |
			(classMorph connections
				detect: [ :each |
					each class = self
					and: [ each sourceMorph == source ]
					and: [ each targetMorph == target ]
					and: [ aBlock value: each ] ]
				ifNone: [ "continue searching" ])
				ifNotNilDo: [ :found | ^ found ] "Only one of this kind should exist, this mechanism should ensure this." ].
	^ nil