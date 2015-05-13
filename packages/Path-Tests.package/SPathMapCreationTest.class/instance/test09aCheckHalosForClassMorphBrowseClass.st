testing
test09aCheckHalosForClassMorphBrowseClass
	| classMorph menuMorph browserMorph |
	classMorph := self classMorph: SSBClassA.
	menuMorph := self activateMenuFor: classMorph.
	self pushButton: #browse on: menuMorph.
	browserMorph := World findDeepSubmorphThat: [:each | 
		(each class = PluggableSystemWindow and: 
		[each model isKindOf: Browser]) and: 
		[(each model selectedClassName = #SSBClassA) and: 
			[each model selectedMessageCategoryName isNil]]] ifAbsent: nil.
	self assert: browserMorph notNil.
	browserMorph abandon.