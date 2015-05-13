*Path-View-Refactoring-instance creation
hierarchyOf: aClass includes: aSuperclass
	^self new
		type: (Array with: #hierarchyIncludesSuperclass with: aClass with: aSuperclass)
		block: [aClass withAllSubclasses, aClass allSuperclasses includes: aSuperclass]
		errorString: aClass printString , ' cannot meaningfully become a subclass of ' , aSuperclass.