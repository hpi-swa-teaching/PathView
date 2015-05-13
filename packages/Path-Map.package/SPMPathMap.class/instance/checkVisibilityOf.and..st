accessing-morphs
checkVisibilityOf: aClass and: aMethodSymbol
	^ ((aClass includesSelector: aMethodSymbol) and: 
		[self project isClassInProject: aClass theNonMetaClass]) and: 
			[((self globalOptions showAllMethods not) and:
				[(aClass>>aMethodSymbol) isQuick or: 
					[(aClass>>aMethodSymbol) isAbstract]]) not]