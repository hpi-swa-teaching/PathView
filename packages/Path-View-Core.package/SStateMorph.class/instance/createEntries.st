layout and labels
createEntries
	
	^ self variables collect: [:each | 
		SInstVarMorph on: klass in: classMorph forVariable: each withType: type ]