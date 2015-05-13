method categories
methodCategoriesOfClass: aClass withQuick: aBoolean
	^ (self methodCategories: aClass withQuick: aBoolean), 
		(self methodCategories: aClass class withQuick: aBoolean)