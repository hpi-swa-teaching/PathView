start tools
classListMenu: aMenu shifted: shifted
	"Set up the menu to apply to the receiver's class list, honoring the #shifted boolean"
	self 
		menuHook: aMenu 
		named: #classListMenu 
		shifted: shifted.
	Preferences useOnlyServicesInMenu ifTrue:[^aMenu].
	shifted ifTrue:[^ self shiftedClassListMenu: aMenu].
	aMenu addList: #(
		('browse full (b)'			browseMethodFull)
		('browse hierarchy (h)'		spawnHierarchy)
		('browse protocol (p)'		browseFullProtocol)
		('browse with PathView'	browseWithPathView)
		-
		('printOut'					printOutClass)
		('fileOut'					fileOutClass)
		-
		('show hierarchy'			hierarchy)
		('show definition'			editClass)
		('show comment'			editComment)
		-
		('references... (r)'			browseVariableReferences)
		('assignments... (a)'			browseVariableAssignments)
		('explore state...'			exploreInstanceVariableStateFromTests)
		('class refs (N)'				browseClassRefs)
		-
		('rename class ...'			renameClass)
		('copy class'				copyClass)
		('remove class (x)'			removeClass)
		-
		('check spelling'			spellCheckClass)
		-
		('find method...'				findMethod)
		-
		('more...'					offerShiftedClassListMenu)).
	^ aMenu
