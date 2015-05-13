accessing
label: aStringOrTextOrMorph font: aFont
	"Label this button with the given string or morph."
	| r |
	self removeAllMorphs.
	"nest label in a row for centering"
	r := AlignmentMorph newRow
		borderWidth: 0;
		layoutInset: 0;
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		wrapCentering: #center; cellPositioning: #leftCenter.
	aStringOrTextOrMorph isMorph
		ifTrue: [
			label := aStringOrTextOrMorph.
			r addMorph: aStringOrTextOrMorph]
		ifFalse: [
			label := aStringOrTextOrMorph asString.
			r addMorph: (StringMorph contents: label font: aFont)].
	"space placeholder"
	r addMorph: ((Morph new extent: (aFont pointSize - 3)@(aFont pointSize - 3)) 
					color: Color transparent).
	self checkBoxMorph: (SCheckBoxMorph new 
							extent: (aFont pointSize)@(aFont pointSize)).
	self checkBoxMorph checked: self getModelState.
	r addMorph: self checkBoxMorph.
	self addMorph: r.