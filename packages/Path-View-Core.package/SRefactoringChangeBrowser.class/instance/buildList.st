building
buildList
	| list |
	list := PluggableListMorphPlus on: self
		list: #refactorings
		selected: #selectedRefactoring
		changeSelected: #selectedRefactoring:
		menu: nil
		keystroke: nil.
	self addMorph: list frame: (0@0 corner: 1@0.4).