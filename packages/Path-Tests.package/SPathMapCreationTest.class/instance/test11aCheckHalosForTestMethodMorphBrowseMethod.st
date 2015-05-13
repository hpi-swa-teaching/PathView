testing
test11aCheckHalosForTestMethodMorphBrowseMethod
	| methodMorph menuMorph browserMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBTest selector: #testDoNothing).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #browse on: menuMorph.
	browserMorph := self findBrowserFor: #SSBTest -> #testDoNothing.
	browserMorph abandon.