accessing
highestSuperclassNodeIn: collectionOfNodes
	
	morph visualizedClass allSuperclasses
		reverseDo: [ :class |
			collectionOfNodes
				detect: [ :node | node morph visualizedClass = class ]
				ifFound: [ :node | ^ node ]
				ifNone: [ "continue searching" ] ].
	^ self