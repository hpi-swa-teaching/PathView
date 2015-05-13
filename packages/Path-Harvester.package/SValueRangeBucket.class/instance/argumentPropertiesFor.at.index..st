properties
argumentPropertiesFor: anObject at: aMethodReference index: aNumber
	| requiredPropertyClass storedProperties temporaries |
	requiredPropertyClass := self propertyClassOf: anObject.
	temporaries := self arguments 
						at: aMethodReference 
						ifAbsentPut: (Array 
									new: aMethodReference compiledMethod numTemps).
	storedProperties := temporaries at: aNumber.
	storedProperties
		ifNil: [^ temporaries at: aNumber put: requiredPropertyClass new].
	storedProperties isCollection
		ifTrue: [^ storedProperties 
					detect: [:each | each class = requiredPropertyClass] 
					ifNone: [storedProperties add: requiredPropertyClass new]]
		ifFalse: [^ storedProperties class = requiredPropertyClass
					ifTrue: [storedProperties]
					ifFalse: [(temporaries 
								at: aNumber 
								put: (OrderedCollection 
									with: storedProperties 
									with: requiredPropertyClass new)) last]].