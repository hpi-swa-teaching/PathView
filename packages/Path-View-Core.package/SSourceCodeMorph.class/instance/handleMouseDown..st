event handling
handleMouseDown: anEvent
	"Shift pressed, we have a selection, and started dragging the selected code part.
	Create a morph showing the grabbed code, attach it to the hand."
	
	(SFloatingCodeSnippet
		inHand: anEvent hand
		forText: self codeSelection)
		originalMethod: klass -> selector;
		selectionInterval: definitionPanel textMorph editor selectionInterval.
	anEvent wasHandled: true.