building
miniMap
	
	^ miniMap ifNil: [
		miniMap := SMiniMap on: viewAreaMorph in: scrollPane.
		STool setOffsetFrame: (10 asPoint corner: 0 asPoint) in: miniMap.
		viewAreaMorph minimap: miniMap.
		miniMap ]