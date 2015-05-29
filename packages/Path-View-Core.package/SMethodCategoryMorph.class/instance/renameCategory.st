reengineering
renameCategory
	
	| oldName newName |
	oldName := category asString.
	newName := (UIManager default request: 'New Category Name' initialAnswer: oldName)
					ifEmpty: [ ^self ].
	newName := newName asSymbol.	
	newName = category ifTrue: [^self].
	
	klass organization renameCategory: category toBe: newName.
	self owner updateAll. "TODO: system event for renaming category not emitted, see SMethodCategoryMorph methodOrCategoryEvent:"