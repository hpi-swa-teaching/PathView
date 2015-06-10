as yet unclassified
testToggleLabels

	| dummyClassMorphs classDiagram classNameMorph elemShownBefore elemShownAfter elemShownAfter2 |
	"ClassMorph of a random class"
	dummyClassMorphs := OrderedCollection newFrom: { SClassMorph on: testClass}.
	classDiagram := SClassDiagram new.

	classDiagram instVarNamed: 'classMorphs' put: dummyClassMorphs.
	"First element of submorphs have to be a SClassNameMorph"
	classNameMorph := (dummyClassMorphs at: 1) submorphs at: 1.
	"submorphs: SStateMorph containing class name, SInheritanceMorph containing <extends..."
	elemShownBefore := classNameMorph submorphs size.

	classDiagram toggleLabels.
	classNameMorph := ((classDiagram instVarNamed: 'classMorphs') at: 1) submorphs at: 1.
	"submorphs: SStateMorph containing class name"
	elemShownAfter := classNameMorph submorphs size.

	classDiagram toggleLabels.
	classNameMorph := ((classDiagram instVarNamed: 'classMorphs') at: 1) submorphs at: 1.
	"submorphs: SStateMorph containing class name, SInheritanceMorph containing <extends..."
	elemShownAfter2 := classNameMorph submorphs size.

	"Check forward direction"
	self assert: [elemShownAfter = (elemShownBefore - 1)].
	"Check reverse direction"
	self assert: [elemShownAfter = (elemShownAfter2 - 1)]