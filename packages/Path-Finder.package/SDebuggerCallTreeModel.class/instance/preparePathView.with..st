path view
preparePathView: morph with: aSetOfClasses
	"Did not see a nice way to divide this method into several shorter methods..."
	
	| mapping callNodes openedMethods |
	super preparePathView: morph with: aSetOfClasses.
	mapping := self getSuspiciousnessMapping.
	"Sort according to suspiciousness values."
	callNodes := mapping keys asSortedCollection: [ :node1 :node2 | (mapping at: node1) second first > (mapping at: node2) second first ].
	openedMethods := (callNodes size * self class openedMethodsPercentage) ceiling. "At least one."
	callNodes withIndexDo: [ :node :index | | suspiciousnessColor method |
		method := node methodReference actualClass -> node methodReference methodSymbol.
		suspiciousnessColor := (mapping at: node) first.
		(index <= openedMethods and: [ (mapping at: node) second first >= self class openedMethodThreshold ]) ifTrue: [
			(morph addMethod: method) color: suspiciousnessColor ]. "Open the code-box."
		morph
			morphForMethod: method
			do: [ :methodMorph | | iconMorph |
				"Do not highlight the whole row, because the view looks to crowded and colorful."
				"methodMorph highlightedColor: suspiciousnessColor".
				iconMorph := methodMorph setColorIcon: suspiciousnessColor.
				node hasViolations ifTrue: [
					iconMorph addMorph: (SPMViolationMorph on: node violations) ] ] ].