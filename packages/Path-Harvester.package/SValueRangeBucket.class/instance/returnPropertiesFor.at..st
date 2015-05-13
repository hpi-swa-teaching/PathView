properties
returnPropertiesFor: anObject at: aMethodReference
	| requiredPropertyClass storedProperties |
	requiredPropertyClass := self propertyClassOf: anObject.
	storedProperties := self returns at: aMethodReference ifAbsent: [nil].
	storedProperties
		ifNil: [^ self returns 	at: aMethodReference put: requiredPropertyClass new].
	storedProperties isCollection
		ifTrue: [^ storedProperties 
					detect: [:each | each class = requiredPropertyClass] 
					ifNone: [storedProperties add: requiredPropertyClass new]]
		ifFalse: [^ storedProperties class = requiredPropertyClass
					ifTrue: [storedProperties]
					ifFalse: [(self returns 
								at: aMethodReference 
								put: (OrderedCollection 
									with: storedProperties 
									with: requiredPropertyClass new)) last]].