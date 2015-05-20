WiW support
morphicLayerNumber
	"Try to keep me above my input"
	^(self input notNil and: [ self input ~~ self and: [ self input isMorph ]])
		ifTrue: [ self input morphicLayerNumber - 1 ]
		ifFalse: [ super morphicLayerNumber ]
