building
scrollBar

	^ scrollBar ifNil: [
		scrollBar := Slider
			on: self viewAreaMorph
			getValue: #zoomLevel 
			setValue: #zoom:
			min: SClassDiagram zoomMin
			max: SClassDiagram zoomMax 
			quantum: SClassDiagram zoomStep.
		scrollBar ]