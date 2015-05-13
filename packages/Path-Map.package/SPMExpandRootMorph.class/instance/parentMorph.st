accessing
parentMorph
	self targetMorph isMethodCategoryMorph
		ifTrue: [^ self targetMorph parentMorph]
		ifFalse: [^ super parentMorph].