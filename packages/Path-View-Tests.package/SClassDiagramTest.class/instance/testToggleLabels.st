testing
testToggleLabels

	| dummyClassMorphs classDiagram classNameMorph elemCountUntoggled elemCountToggled elemCountAfterSecondToggle |
	dummyClassMorphs := OrderedCollection newFrom: { SClassMorph on: testClass}.
	classDiagram := klass new.

	classDiagram instVarNamed: 'classMorphs' put: dummyClassMorphs.
	classNameMorph := (dummyClassMorphs at: 1) submorphs at: 1.
	elemCountUntoggled := classNameMorph submorphs size.
	"All submorphs are shown until now"

	"Hide all label morphs except the name morph (first submorph of classNameMorph)"
	classDiagram toggleLabels.
	classNameMorph := ((classDiagram instVarNamed: 'classMorphs') at: 1) submorphs at: 1.
	elemCountToggled := classNameMorph submorphs size.

	"Show all label morphs again for checking the back direction"
	classDiagram toggleLabels.
	classNameMorph := ((classDiagram instVarNamed: 'classMorphs') at: 1) submorphs at: 1.
	elemCountAfterSecondToggle := classNameMorph submorphs size.

	"Hiding all unnecessary labels means that one submorph dissapears from
	 classNameMorph which contains a string like '<extend Morph>' "
	self assert: [elemCountToggled = (elemCountUntoggled - 1)].
	self assert: [elemCountAfterSecondToggle = (elemCountToggled + 1)]