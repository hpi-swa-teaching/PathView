building-customs
addDropDownSelectionListTo: aSymbol on: aModel with: aCollection inFrame: aRectangle entriesChanged: aMessage
	| dropDownList |
	dropDownList := self 
						addDropDownSelectionListTo: aSymbol 
						on: aModel 
						with: aCollection 
						inFrame: aRectangle.
	aModel addDependent: dropDownList.
	dropDownList entriesChangedSelector: aMessage.
	^ dropDownList