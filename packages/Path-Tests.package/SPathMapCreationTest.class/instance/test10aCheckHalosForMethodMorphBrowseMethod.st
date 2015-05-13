testing
test10aCheckHalosForMethodMorphBrowseMethod
	| methodMorph menuMorph browserMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBClassA selector: #initialize).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #browse on: menuMorph.
	browserMorph := self findBrowserFor: #SSBClassA -> #initialize.
	browserMorph abandon.