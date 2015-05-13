exceptions-helper
setVariableNameIn: aViolation for: anObject with: aContext
	| arguments receiver allInstVarValues |
	aViolation kindOf == #precondition
		ifTrue: [	arguments := aContext at: 2.
				(arguments select: [:each | each == anObject]) size = 1
					ifTrue:[aViolation variableName: 
							(aContext receiver clientMethod methodNode arguments 
								at: (arguments indexOf: anObject)) key]].
	aViolation kindOf == #invariant
		ifTrue: [receiver := aContext at: 1.
			allInstVarValues := receiver class allInstVarNames 
									collect: [:each | receiver instVarNamed: each].
			(allInstVarValues select: [:each | each == anObject]) size = 1
				ifTrue: [	aViolation variableName: 
							(receiver class allInstVarNames 
								at: (allInstVarValues indexOf: anObject))]].