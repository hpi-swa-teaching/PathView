halos and balloon help
hasHalo
	| halo haloTarget |
	super hasHalo ifTrue: [ ^true ].
	halo := self currentHand halo.
	halo ifNil: [ ^false ].
	haloTarget := halo target.
	haloTarget == self ifTrue: [ ^true ].
	self allMorphsDo: [ :ea | haloTarget == ea ifTrue: [ ^true ] ].
	^false