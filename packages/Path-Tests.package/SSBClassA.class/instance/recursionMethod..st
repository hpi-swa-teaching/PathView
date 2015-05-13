as yet unclassified
recursionMethod: aNumber

	aNumber = 0
		ifTrue: [^ 0]
		ifFalse: [
			^ aNumber + (self recursionMethod: aNumber - 1)].