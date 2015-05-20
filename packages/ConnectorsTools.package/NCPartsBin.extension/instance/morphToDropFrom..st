*connectorstools-menus
morphToDropFrom: aMorph
	"Answer the morph to drop if the user attempts to drop aMorph"
	| theMorph |
	theMorph := aMorph.
	aMorph removeHalo .
	(aMorph isKindOf: NCMakerButton)
		ifTrue: [ theMorph := aMorph target. aMorph delete ].
	^ self addButton installPrototype: theMorph; yourself