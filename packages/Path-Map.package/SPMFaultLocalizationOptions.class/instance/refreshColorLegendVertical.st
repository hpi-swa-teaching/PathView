visualization
refreshColorLegendVertical
	self singlePointOfFault 
		ifTrue: [self colorLegend verticalColors: self class transparentForColorLegend]
		ifFalse: [self colorLegend 
					verticalColors: {0.1 -> {Color white alpha: 0}.
									1.0 -> {Color white alpha: 0.01. Color white}}].