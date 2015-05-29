menu-actions
canBeSaved

	[self classMorphs do: [:cm | cm saveToCodeFor: '']] on: Error do: [:e | ^ false].
	^ true