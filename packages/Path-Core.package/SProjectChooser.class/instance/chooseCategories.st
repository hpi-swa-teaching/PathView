project commands
chooseCategories

	| chooser |
	chooser := SCategoryChooser on: selectedProject.
	chooser addDependent: self.
	selectedProject resetClassesCache.
	^ chooser