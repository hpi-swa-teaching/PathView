*Path-Core
pluggableTreeMorphClass: aSpec

	(aSpec isKindOf: SPluggableTreeSpec) ifTrue: [^ SPluggableTreeMorph].
	^ PluggableTreeMorph