instance creation
on: aCallNode color: aColor

	^ self new
		callNode: aCallNode;
		color: aColor;
		createDefinitionMorph;
		createLabelMorph;
		createExclamationMark;
		createNodeButtons;
		createObjectExploreButtons;
		yourself