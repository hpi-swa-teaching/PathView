properties
memberPropertiesFor: anObject at: aClass index: aNumber
	| requiredPropertyClass storedProperties instanceVariables |
	requiredPropertyClass := self propertyClassOf: anObject.
	instanceVariables := self members 
						at: aClass 
						ifAbsentPut: (Array new: aClass allInstVarNames size).
	storedProperties := instanceVariables at: aNumber.
	storedProperties
		ifNil: [^ instanceVariables at: aNumber put: requiredPropertyClass new].
	storedProperties isCollection
		ifTrue: [^ storedProperties 
					detect: [:each | each class = requiredPropertyClass] 
					ifNone: [storedProperties add: requiredPropertyClass new]]
		ifFalse: [^ storedProperties class = requiredPropertyClass
					ifTrue: [storedProperties]
					ifFalse: [(instanceVariables 
								at: aNumber 
								put: (OrderedCollection 
									with: storedProperties 
									with: requiredPropertyClass new)) last]].