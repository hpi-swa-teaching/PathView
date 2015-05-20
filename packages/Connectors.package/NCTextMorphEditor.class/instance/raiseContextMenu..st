menu commands
raiseContextMenu: characterStream 
	(morph orOwnerSuchThat: [ :ea | ea hasYellowButtonMenu ])
		ifNotNilDo: [ :m | m yellowButtonActivity: ActiveEvent shiftPressed ].
	^true
