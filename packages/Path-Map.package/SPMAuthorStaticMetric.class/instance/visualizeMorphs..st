visualization
visualizeMorphs: aCollectionOfMorphs
	| author |
	self authors: (aCollectionOfMorphs 
					inject: Set new 
					into: [:set :each | 
						set 
							add: (self getMetricValue: 
									each methodReference compiledMethod);
							yourself]) asSortedCollection.
	self createColorMapping.
	self options refreshColorLegend.
	aCollectionOfMorphs do: [:each | 
		author := self getMetricValue: each methodReference compiledMethod.
		self addMetricInfo: author to: each.
		each propagateColor: (self colorMapping at: author)].
	