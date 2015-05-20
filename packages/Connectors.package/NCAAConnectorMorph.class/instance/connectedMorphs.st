connectors-queries
connectedMorphs
	"Answer a 2 element Array with my connections. Either or both could be nil"
	^(constraints collect: [ :ea | ea input ])