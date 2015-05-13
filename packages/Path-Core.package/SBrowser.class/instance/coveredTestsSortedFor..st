coverage list
coveredTestsSortedFor: aMethodReference
	^ (SProject current coveredTestsFor: aMethodReference)
		asSortedCollection: [:a :b | a asMethodReference <= b asMethodReference]