text morphs-accessing
stringMorphsIn: aMorph
	"Answer a collection of all my string morphs"
	| retval |
	retval := OrderedCollection new.
	aMorph allMorphsDo: [ :ea | (ea isStringMorph) ifTrue: [ retval add: ea ] ].
	^retval