drawing
drawOn: aCanvas 
	super drawOn: aCanvas.
	self steppingSelectionMorph
		ifNotNilDo: [:morph | selectedMorph ~= morph
				ifTrue: [self
						fillMorph: morph
						background: Preferences menuSelectionColor muchLighter darker
						on: aCanvas]].
	self steppingSelectionHighlightMorphs
		do: [:morph | selectedMorph ~= morph
				ifTrue: [self
						fillMorph: morph
						background: Preferences menuSelectionColor muchLighter
						on: aCanvas]]