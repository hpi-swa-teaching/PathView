initialize-release
setCategoryListFromNames

	self selectedCategoriesList: (self class allCategories 
		inject: OrderedCollection new 
		into: [:coll :each | coll 
						add: each -> (self project categories includes: each);
						yourself]).
	self changed: #allCategoryNames.