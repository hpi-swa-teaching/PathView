as yet unclassified
param: anObject method: anotherObject
	anObject == 5 ifTrue: [^ 4].
	self myValue: (Array with: anObject with: anotherObject).
	^ self myValue