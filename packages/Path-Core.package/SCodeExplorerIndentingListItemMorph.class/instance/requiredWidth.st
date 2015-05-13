scrolling
requiredWidth
	self isCodeExpanded ifTrue: [
		^ self codePane width + 
			(self codePane objectExplorationMorphsStack size *
				SObjectExplorationMorph explorationMinWidth)].
	^ self font widthOfStringOrText: self contents