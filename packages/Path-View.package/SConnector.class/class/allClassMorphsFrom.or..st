instance creation
allClassMorphsFrom: source or: target
	
	^ ((source ownerThatIsA: SClassDiagram) ifNil: [ target ownerThatIsA: SClassDiagram ])
		ifNotNilDo: #classMorphs
		ifNil: [ #() ]