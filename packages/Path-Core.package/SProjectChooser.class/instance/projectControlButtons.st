building
projectControlButtons

	^ #(
		( 'Set Current' #selectCurrentProject #alwaysEnabled)
		( 'Add Project' #addProject #alwaysEnabled)
		( 'Choose Categories...' #chooseCategories #isProjectSelected)
		( 'Remove Project' #removeSelectedProject #isProjectSelected)
		( 'Reset Cache' #resetCacheOfSelectedProject #isProjectSelected)
		).