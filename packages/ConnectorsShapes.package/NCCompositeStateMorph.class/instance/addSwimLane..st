swim lanes
addSwimLane: evt 
	| sr after newLane line |
	sr := self stateRectangle.
	after := sr submorphs detect: 
					[:ea | ea isLineMorph not 
						and: [ea bounds containsPoint: evt position]]
				ifNone: [].
	line := sr addLine.
	line dashedBorder: { 
				line borderWidth * 4.
				line borderWidth * 3.
				Color transparent}.
	newLane := (PasteUpMorph new)
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				color: Color transparent;
				borderWidth: 0;
				yourself.
	after ifNil: [sr addMorphBack: newLane]
		ifNotNil: 
			[sr addMorph: line after: after.
			sr addMorph: newLane after: line]