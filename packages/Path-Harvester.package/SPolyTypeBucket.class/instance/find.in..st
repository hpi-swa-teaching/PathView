collecting types
find: aContainer in: aSet

	^ aSet detect: [:each | each isBehavior not 
								and: [each typeOfContainer = 
										aContainer typeOfContainer]] 
			ifNone: [nil].