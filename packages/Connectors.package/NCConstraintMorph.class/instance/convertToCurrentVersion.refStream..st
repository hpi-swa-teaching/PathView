object fileIn
convertToCurrentVersion: varDict refStream: smartRefStrm 
	"I renamed targetBlock to constraint to catch these conversions."
	varDict at: 'targetBlock'
		ifPresent:  [:b | constraint := b ].
	self convertToCurrentVersion.
	^super convertToCurrentVersion: varDict refStream: smartRefStrm
