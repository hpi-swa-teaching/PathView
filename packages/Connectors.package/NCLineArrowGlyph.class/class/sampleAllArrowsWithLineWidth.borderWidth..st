testing
sampleAllArrowsWithLineWidth: lw borderWidth: bw
	"NCLineArrowGlyph sampleAllArrows"

	| pos g samples button |
	pos := 0@0.
	g := nil.
	samples := OrderedCollection new.
	(self class organization  listAtCategoryNamed: 'arrow forms') do: [ :sym |
		g := self perform: sym.
		g scale: 100@100.
		samples add: (((g sampleFormForLineWidth: lw borderWidth: bw) asMorph) position: pos; openInWorld).
		pos := pos + (50@20).
	].

	button := (SimpleButtonMorph newWithLabel: 'kill them').
	samples add: button.
	button target: World; actionSelector: #deleteMorphs:; arguments: { samples }; openInHand.
	
	^samples