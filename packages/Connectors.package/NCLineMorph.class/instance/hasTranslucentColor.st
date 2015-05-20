accessing
hasTranslucentColor
	"Answer true if this any of this morph is translucent but not transparent."

	(fillStyle isTranslucent and: [ fillStyle isTransparent not]) ifTrue: [^ true].
	^super hasTranslucentColor