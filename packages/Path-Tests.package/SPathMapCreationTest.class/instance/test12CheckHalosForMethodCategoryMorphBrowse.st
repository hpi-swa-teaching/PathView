testing
test12CheckHalosForMethodCategoryMorphBrowse
	| menuMorph browserMorph categoryMorph |
	(self pathMap options at: #globalOptions) switchShowMethodCategories.
	categoryMorph := (self classMorph: SSBClassA) childrenMorphs at: #accessing.
	menuMorph := self activateMenuFor: categoryMorph.
	self pushButton: #browse on: menuMorph.
	browserMorph := World findDeepSubmorphThat: [:each | 
		(each class = PluggableSystemWindow and: 
		[each model isKindOf: Browser]) and: 
		[(each model selectedClassName = #SSBClassA) and: 
			[each model selectedMessageCategoryName isNil]]] ifAbsent: nil.
	self assert: browserMorph notNil.
	browserMorph abandon.