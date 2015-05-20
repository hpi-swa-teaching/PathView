menus
installPrototype: aMorph 
	target ifNotNil: [ target dismissMorph ].
	target := aMorph asButtonPrototype.
	self generateThumbnail.
	self enableDrop: false.
	self actionSelector: (aMorph isConnector 
				ifTrue: [#startWiring]
				ifFalse: [#openInHand])