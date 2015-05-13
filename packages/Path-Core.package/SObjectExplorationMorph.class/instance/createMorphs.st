morphic
createMorphs

	| exploredObject |
	exploredObject := self getObjectToExplore.
	self 
		createObjectExplorerOn: exploredObject;
		createCloseButton.
