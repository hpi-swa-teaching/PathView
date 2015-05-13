accessing
selectedClasses

	^ Smalltalk allClasses select: [:aClass | 
		(self project categories includes: aClass category) 
		and: [(aClass inheritsFrom: TestCase) not]]