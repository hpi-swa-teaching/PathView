instance creation
onClass: aClass instVarName: aSymbol
	^ (super 
		on: SProject current 
		entryPoints: (SProject current allTestsAsEntryPoints))
		observedClass: aClass;
		instVarName: aSymbol;
		yourself