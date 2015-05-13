state exploration
chooseTestFrom: aDictionary and: aString
	| tests |
	tests := aDictionary keys select: [:each | (aDictionary at: each) includes: aString].
	^ (UIManager default 
		chooseFrom: tests 
		values: tests 
		lines: #() 
		title: 'Choose test for state in PathFinder')