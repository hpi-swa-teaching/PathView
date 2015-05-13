testing
test13CheckHalosForCategoryMorphBrowse
	| menuMorph browserMorph categoryMorph |
	categoryMorph := (self classMorph: SSBClassA) parentMorph.
	menuMorph := self activateMenuFor: categoryMorph.
	self pushButton: #browse on: menuMorph.
	browserMorph := World findDeepSubmorphThat: [:each | 
		(each class = PluggableSystemWindow and: 
		[each model isKindOf: Browser]) and: 
		[(each model selectedSystemCategory = #'Path-Tests-Sandbox') and: 
			[each model selectedClassName isNil]]] ifAbsent: nil.
	self assert: browserMorph notNil.
	browserMorph abandon.