building
scrollBar

	^ scrollBar ifNil: [
		scrollBar := UiSlider new
			orientation: #vertical;
			position: 10@200;
			truncate: false;
			minimum: SClassDiagram zoomMin;
			maximum: SClassDiagram zoomMax;
			singleStep: SClassDiagram zoomStep;
			currentValue: self viewAreaMorph zoomLevel.
			.

			self 
				connect: scrollBar
				signal: #valueChanged:
				to: self viewAreaMorph
				selector: #zoomTo:. 
		scrollBar ]