menus
deleteSelectedMorph: anEvent
	"Allow the user to delete one of my submorphs, if any."
	| choice |
	submorphs isEmpty ifTrue: [ ^self ].
	submorphs size = 1 ifTrue: [ ^self deleteShape: submorphs first ].

	choice := (PopUpMenu labelArray: (submorphs collect: [ :ea | ea externalName ]))
							startUpWithCaption: 'Select Morph'.
	choice > 0 ifTrue: [ self deleteShape: (submorphs at: choice) ].