refactoring options
shouldUseExistingMethod: aSelector
	^ self confirm: 
		('Use existing method <1s> instead of creating new method?' expandMacrosWith: aSelector)