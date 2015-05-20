connectors-queries
validConnections
	"Answer an Array with all of my valid connections. This will be from 0 to 2 long."
	| f s |
	f := constraints at: 1.
	s := constraints at: 2.
	^f input ifNotNil: [
		s input ifNotNil: [ { f input . s input } ]
		ifNil: [ { f input } ]
	]
	ifNil: [
		constraints second input ifNotNil: [ { s input } ]
		ifNil: [ { } ]
	]