public api
concernsOfGroup: aGroupString andTest: aMethodRef
	^ ((self groups at: aGroupString) 
		select: [:each | (self mapping at: each ifAbsent: [#()]) includes: aMethodRef]) 		
			asSortedCollection