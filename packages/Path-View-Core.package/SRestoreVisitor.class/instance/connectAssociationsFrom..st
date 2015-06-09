restoring
connectAssociationsFrom: aMorph  

	self associationsStore copy
		detect: [:spec | spec first = aMorph variableName and: [spec second = aMorph type]]
		ifFound: [:spec ||morphs|
			Smalltalk at: spec third ifPresent: [:class |
				morphs := aMorph classMorph pasteUpMorphOrWorld
								classMorphsFor: class.].
			Smalltalk at: spec third ifAbsent: [
					morphs := aMorph classMorph pasteUpMorphOrWorld
								thContainerMorphFor: spec third. ].
				morphs
					ifNotEmpty: [
						morphs do: [:morph | aMorph openInstVarAssociationTo: morph].
						self associationsStore remove: spec]
					ifEmpty: []]
		ifNone: [].