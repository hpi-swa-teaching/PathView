stepping and presenter
moveMorphs: yellowButtonPressed
	"Move all the newly affected morphs and the ones I'm already moving."
	self class == self basicClass
		ifTrue: [^ self morphIfNecessary: yellowButtonPressed ].
	(((self affectedMorphs
		reject: [:m | unmoved includes: m])
		reject: [:m | moved includesKey: m])
		select: filter)
		do: [:m | moved at: m put: m bounds].
	moved
		keysAndValuesDo: [:m :b | self positionMorph: m originalBounds: b]