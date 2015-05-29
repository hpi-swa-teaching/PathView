transforming
transform
	| existingSelector target newName |
	target := targetClass ifNil: [class] ifNotNil: [targetClass].
	existingSelector := self existingSelector.
	self nameNewMethod: (existingSelector isNil 
				ifTrue: [(newName := self getNewMethodName)
							ifNil: [^self]
							ifNotNil: [newName] ]
				ifFalse: [existingSelector]).
	existingSelector isNil 
		ifTrue: 
			[target compile: extractedParseTree newSource
				withAttributesFrom: (class methodFor: selector)].
	class compileTree: modifiedParseTree