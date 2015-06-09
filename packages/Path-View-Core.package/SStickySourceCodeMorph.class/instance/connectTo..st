connections
connectTo: aMethodMorph
	
	partner := aMethodMorph.
	lines ifNotNil: [ lines do: #abandon ].
	lines := OrderedCollection
		with: (
			(SNoteConnector openFor: partner connectedTo: self)
				constraints
					with: { self. partner classMorph }
					do: [ :c :m | self attachConstraint: c to: m at: #top ]).