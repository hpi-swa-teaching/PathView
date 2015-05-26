as yet unclassified
testOpenDirectAssociations
	"Test auto-opening of associations"
"	| pasteUp arrowMorphs classMorphs submorphs classMorphClasses |
	pasteUp := SClassDiagram new.
	pasteUp addMorph: instance.
	self assert: [pasteUp submorphs size = 1].
	instance openAssociations.
	classMorphs := pasteUp submorphs select: [:m | m isKindOf: SClassMorph].
	arrowMorphs := pasteUp submorphs select: [:m | m isKindOf: SAssociationConnector].
	""The testClass has 2 instance variables, ivar1 and ivar2""
	self assert: [classMorphs size = 3].
	self assert: [arrowMorphs size = 2].
	classMorphClasses := classMorphs collect: [:classMorph | classMorph klass].
	{testClass . associatedTestClass . associatedTestClass superclass} do: [:class |
		self assert: (classMorphClasses includes: class)].
	((self allSubmorphsRecursiveFor: instance)
		detect: [:m | m isKindOf: SStateMorph]) collapseMorphs.
	submorphs := (self allSubmorphsRecursiveFor: pasteUp).
	self assert: [ self thereIsAStringMorphIn: submorphs with: 'ivar1'].
	self assert: [ self thereIsAStringMorphIn: submorphs with: 'ivar2'].
"