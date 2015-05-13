instance creation
on: aCallNode color: aColor
	"Label morph will be created later on"
	^ self new
		callNode: aCallNode;
		color: aColor;
		createDefinitionMorph;
		createNodeButtons;
		createObjectExploreButtons;
		yourself