event handling
handlesMouseDown: anEvent
	"We handle the mouse-event only, if it is the start of a reengineering drag'n'drop.
	Shift has to be pressed, and the click has to be inside an existing selection.
	We set the event as handled, to prevent the TextMorph to change the selection."
	
	^ anEvent shiftPressed
		and: [ self codeSelection notNil ]
		and: [ self codeSelection size > 0 ]
		and: [ "Check, whether the click was inside the selected part of the code."
			definitionPanel textMorph editor paragraph selectionRects
				anySatisfy: [ :each |
					each containsPoint:
						(definitionPanel textMorph globalPointToLocal: anEvent hand position) ] ]
		and: [ anEvent wasHandled: true. true ]