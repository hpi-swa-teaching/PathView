new-morph participation
newStandAlone
	"NCGlyphEditor initializedInstance"
	| newMe minExt aFont |
	aFont := Smalltalk at: #TTCFont ifPresent: [ :ttcf | ttcf someInstance ].
	aFont ifNil: [ ^nil ].
	newMe := self new.
	newMe font: aFont.
	minExt := newMe minimumExtent.
	^((SystemWindow labelled: 'Arrow Editor' translated)
		addMorph: newMe frame: (0@0 extent: (1@1))) model: newMe;
		extent: minExt;
		minimumExtent: minExt;
		yourself
