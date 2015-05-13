instance creation
withText: aString from: aMorph
	| inst |
	inst := self new
		setText: aString;
		yourself.
	aMorph pasteUpMorphOrWorld addMorph: inst.
	^ inst