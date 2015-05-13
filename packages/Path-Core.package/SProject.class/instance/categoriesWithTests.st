categories
categoriesWithTests

	^ (self testClasses inject: Set new into: [:sum :each | 
		sum 
			add: each category; 
			yourself]) asArray