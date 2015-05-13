path view
openPathViewWith: aSetOfClasses
	
	| morph |
	morph := SPathView open classDiagramMorph.
	self preparePathView: morph with: aSetOfClasses.
	morph
		expandAndToggleLabels;
		layoutGraphForked.
	^ morph