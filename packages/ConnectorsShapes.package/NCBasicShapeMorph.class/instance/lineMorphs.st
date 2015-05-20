submorphs-accessing
lineMorphs
	"Answer a collection of all my line morphs"

	| retval |
	retval := OrderedCollection new.
	self 
		allMorphsDo: [:ea | (ea isLineMorph) ifTrue: [retval add: ea]].
	^retval