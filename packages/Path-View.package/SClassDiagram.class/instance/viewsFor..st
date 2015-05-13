views
viewsFor: aProject
	
	^ ((self viewMethodReferencesFor: aProject)
		collect: [:ref | ref selector asString allButLast])
		asSet asSortedCollection