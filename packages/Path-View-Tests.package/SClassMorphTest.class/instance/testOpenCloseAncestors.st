as yet unclassified
testOpenCloseAncestors
	"Test auto-opening of ancestors. (instance + ((connector + superclass) * auto ancestor depth))"
	| pasteUp arrowMorphs classMorphs superclasses oldPreference |
	oldPreference := SClassMorph autoAncestorDepth.
	SClassMorph autoAncestorDepth: 2.
	pasteUp := SClassDiagram new.
	pasteUp addMorph: instance.
	self assert: [pasteUp submorphs size = 1].
"	instance openAncestors.
	classMorphs := pasteUp submorphs select: [:m | m isKindOf: SClassMorph].
	arrowMorphs := pasteUp submorphs select: [:m | m isKindOf: SInheritanceConnector].
	self assert: [classMorphs size = (1 + SClassMorph autoAncestorDepth)].
	self assert: [arrowMorphs size = SClassMorph autoAncestorDepth].
	superclasses := (instance klass withAllSuperclasses copyFrom: 1 to: SClassMorph autoAncestorDepth + 1).
	classMorphs do: [:classMorph |
		self assert: [superclasses includes: classMorph klass].
		superclasses remove: classMorph klass].
	SClassMorph autoAncestorDepth: oldPreference.
"