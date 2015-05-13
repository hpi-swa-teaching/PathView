instance creation
buildFrom: collectionOfElements
	"The collection can contain SClassMorphs (or subclasses), SNoteMorphs or SStickySourceCodeMorphs. Alternatively, a collection of already built elements is also possible."
	
	| instance morphsToNodes nodeFactory connectors |
	morphsToNodes := Dictionary new.
	nodeFactory := [ :morph | morphsToNodes at: morph ifAbsentPut: [ SGraphElement buildFrom: morph ] ].
	instance := self new.
	connectors := Set new.
	collectionOfElements do: [ :element |
		(element isKindOf: SGraphElement)
			ifTrue: [
				instance addElement: element.
				(element isKindOf: SGraphNode) ifTrue: [ instance addElements: element edges ] ]
			ifFalse: [
				((element isKindOf: SClassMorph) or: [ element isKindOf: SStickySourceCodeMorph ]) ifTrue: [
					instance addElement: (nodeFactory value: element).
					connectors addAll: (element connections copyWithoutAll: connectors) ] ] ].
	connectors do: [ :connector | | edge |
		edge := SGraphElement buildFrom: connector.
		edge from: (nodeFactory value: connector graphSourceMorph) to: (nodeFactory value: connector graphTargetMorph).
		instance addElement: edge ].
	^ instance