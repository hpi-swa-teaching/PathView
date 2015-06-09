updating
update: action
	
	action caseOf: {
		[ #classMorphSelected ] -> [ self changed: #hasClassMorphSelection ]
	}.