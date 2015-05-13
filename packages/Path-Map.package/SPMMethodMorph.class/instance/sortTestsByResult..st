menu actions
sortTestsByResult: aCollection
	| failingTests passingTests |
	passingTests := aCollection select: [:each | each first lastResult hasPassed].
	failingTests := aCollection select: [:each | each first lastResult hasPassed not].
	^ (failingTests sort: [:a :b | a second < b second]), 
		(passingTests sort: [:a :b | a second < b second])