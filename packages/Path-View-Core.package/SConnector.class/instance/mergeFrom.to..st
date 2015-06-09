updating
mergeFrom: old to: new
	"This strongly assumes that either source or target morph of receiver is the old parameter!"
	
	((self sourceMorph = old)
		ifTrue: [ self connectStartTo: new ]
		ifFalse: [ self connectFinishTo: new ])
		ifNotNilDo: [ :newConnector |
			newConnector == self
				ifTrue: [ self restoreConsistency ]
				ifFalse: [ self abandon ] ]