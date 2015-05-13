checking
shouldMutate: aMethodReference

	^ (self isReturningSelf: aMethodReference) not and: 
	  [(self blacklistedMethods includes: aMethodReference) not]