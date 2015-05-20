event handling
keyStroke: evt 
	"Copied from StringMorphEditor"

	"This is hugely inefficient, but it seems to work, and it's unlikely it will ever need
	to be any more efficient -- it's only intended to edit single-line strings."

	| newSel |

	super keyStroke: evt.
	ActiveHand keyboardFocus == self ifFalse: [ self releaseEditor. ^self ].
	newSel := self editor selectionInterval.	"restore editor state"
	self refreshParagraph.
	self editor selectFrom: newSel first to: newSel last.
