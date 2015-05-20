distribution
rebuildObjectsToolIcons

| oldDepth |
(Display supportsDisplayDepth: 32) ifTrue:
	[oldDepth := Display depth.
	Display newDepth: 32.
	PartsBin clearThumbnailCache.
	Flaps replaceToolsFlap.
	ObjectsTool allSubInstancesDo: [:ea | ea tweakAppearanceAfterModeShift].
	Display newDepth: oldDepth]