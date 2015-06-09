testing
isSuperClassOf: aMorph
	
	^ (aMorph isKindOf: SClassMorph)
		and: [ self klass allSubclasses includes: aMorph visualizedClass ]