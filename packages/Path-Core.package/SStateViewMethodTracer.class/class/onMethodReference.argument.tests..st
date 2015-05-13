instance creation
onMethodReference: aMethodReference argument: aNumber tests: aCollectionOfTests
	^ (super 
		on: SProject current 
		entryPoints: aCollectionOfTests)
			method: aMethodReference;
			argument: aNumber;
			yourself