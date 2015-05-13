building-customs
addDropDownSelectionListTo: aSymbol on: aModel with: aCollection inFrame: aRectangle
	| flap dropDownList |
	flap := self getFlap: aSymbol.
	dropDownList := SDropDownMorph on: aModel with: aCollection.
	flap addMorph: dropDownList.
	self setFrame: aRectangle in: dropDownList.
	dropDownList 
		cornerStyle: #rounded;
		hResizing: #rigid;
		hide.
	^ dropDownList