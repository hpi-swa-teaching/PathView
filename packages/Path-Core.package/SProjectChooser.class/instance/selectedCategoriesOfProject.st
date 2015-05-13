project commands
selectedCategoriesOfProject

	^ selectedProject
		ifNil: [#()]
		ifNotNil: [selectedProject categories]