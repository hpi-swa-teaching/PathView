restoring
recreateInheritanceConnection: aMorph

	self inheritanceStore copy do: [:spec |
		Smalltalk
			at: spec
			ifPresent: [:class || morphs |
				(aMorph klass allSuperclasses includes: class) ifTrue: [
					morphs := aMorph classMorph pasteUpMorphOrWorld classMorphsFor: class.
					morphs ifNotEmpty: [
						morphs do: [:morph | SInheritanceConnector openFor: aMorph classMorph connectedTo: morph].
						self inheritanceStore remove: spec]]]].