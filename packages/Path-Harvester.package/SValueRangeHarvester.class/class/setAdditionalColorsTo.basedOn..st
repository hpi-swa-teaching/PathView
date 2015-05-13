pathMap-visualization
setAdditionalColorsTo: aMorph basedOn: aCollection
	aCollection 
		ifNotEmpty: [
			aMorph additionalColors: (self colorMapping 
				select: [:mapping | aCollection includes: mapping key]
				thenCollect: [:mapping | mapping value first])].