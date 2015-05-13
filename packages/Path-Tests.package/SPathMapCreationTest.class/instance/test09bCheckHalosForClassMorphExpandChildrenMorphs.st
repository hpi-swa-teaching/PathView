testing
test09bCheckHalosForClassMorphExpandChildrenMorphs
	| classMorph menuMorph expandedMorph |
	classMorph := self classMorph: SSBClassA.
	menuMorph := self activateMenuFor: classMorph.
	self pushButton: #expandChildren on: menuMorph.
	expandedMorph := World findDeepSubmorphThat: [:each | 
		(each class = SPMExpandRootMorph and: 
		[each targetMorph = classMorph])] ifAbsent: nil.
	self assert: expandedMorph notNil.
	expandedMorph abandon.