visualization
redrawPathMapIfPossible
	self refreshColorLegend.
	self isSelectedAnalysisOption
		ifTrue: [self pathMap resetAllChildren.
				self pathMap tracer
					setColorPropagation; 
					visualizeAllInformation.
				self pathMap addViolations].
	^ self isSelectedAnalysisOption