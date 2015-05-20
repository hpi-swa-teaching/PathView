introspection
postscriptText
	^'"Postscript:
First, convert all the old constraint morphs (if any).
Then make sure that all the connectors have the new FSM.
Then set up some flaps."
| flap |
Utilities informUser: ''Converting old connectors...'' during: [
NCConstraintMorph allSubInstancesDo: [ :ea | ea convertToCurrentVersion ].
NCConnectorMorph allSubInstancesDo: [ :ea | ea reinitializeFSM ].
NCScrolledCompositeStateMorph allInstances do: [ :ea |
ea transformMorph submorphs first on: #mouseDown send: #mouseDown: to: ea.
] ].


Utilities informUser: ''Making Connectors look nicer...'' during: [
NCLineEndConstraintMorph updateOldShapes26June2002 ].

Utilities informUser: ''Recreating Objects Tool thumbnails, please wait...'' during: [
PartsBin clearThumbnailCache; cacheAllThumbnails ].

NCDrawingProject newProjectNamed: ''New Connectors Drawing''.

SystemOrganization removeEmptyCategories.
Morph organization removeEmptyCategories.
Smalltalk garbageCollect.
((Class allSubInstances) do:
	[:cls | | org badCats | org := cls organization.
		(org categories anySatisfy: [ :cat | cat beginsWith2: ''*project-connect'' ])
			ifTrue: [ org removeEmptyCategories ] ]).

ConnectorsInfo instVarNamed: ''default'' put: nil.
'
