accessing-ui
getFlap: aSymbol
	^ self windowMorph paneMorphs 
		detect: [:each | each externalName asSymbol == aSymbol]