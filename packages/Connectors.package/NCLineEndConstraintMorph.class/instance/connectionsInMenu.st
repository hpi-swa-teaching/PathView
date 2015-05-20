menus
connectionsInMenu
	| retval |
	retval := OrderedCollection withAll: super connectionsInMenu.
	retval add: #connectToNearestOrthogonalPoint afterIndex: retval size - 1.
	^retval