running
setUp
	super setUp.
	self pathCategories: (SCategoryChooser allCategories 
							select: [:each | each startsWith: 'Path-']).
	self pathClasses: (Smalltalk allClasses select: [:each | 
						self pathCategories includes: each category]).