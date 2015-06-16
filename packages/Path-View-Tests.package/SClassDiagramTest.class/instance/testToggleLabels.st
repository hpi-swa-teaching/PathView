as yet unclassified
testToggleLabels

	| dummyClassMorphs classDiagram classNameMorph elemShownBefore elemShownAfter elemShownAfter2 |
	dummyClassMorphs := OrderedCollection newFrom: { SClassMorph on: testClass}.
	classDiagram := klass new.

	classDiagram instVarNamed: 'classMorphs' put: dummyClassMorphs.
	classNameMorph := (dummyClassMorphs at: 1) submorphs at: 1.
	elemShownBefore := classNameMorph submorphs size.

	classDiagram toggleLabels.
	classNameMorph := ((classDiagram instVarNamed: 'classMorphs') at: 1) submorphs at: 1.
	elemShownAfter := classNameMorph submorphs size.

	classDiagram toggleLabels.
	classNameMorph := ((classDiagram instVarNamed: 'classMorphs') at: 1) submorphs at: 1.
	elemShownAfter2 := classNameMorph submorphs size.

	self assert: [elemShownAfter = (elemShownBefore - 1)].
	self assert: [elemShownAfter = (elemShownAfter2 - 1)]