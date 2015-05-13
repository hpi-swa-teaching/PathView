accessing
rootMorph

	self parentMorph ifNil: [^ self ].
	^ self parentMorph rootMorph