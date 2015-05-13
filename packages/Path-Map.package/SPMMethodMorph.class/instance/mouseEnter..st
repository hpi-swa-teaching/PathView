event handling
mouseEnter: event

	| methodCategoryLabel |
	super mouseEnter: event.
	"self labelMorph position: self position x @ (self position y + self height)."
	methodCategoryLabel := self parentMorph labelMorph.
	self labelMorph position: methodCategoryLabel position x @ 
						(methodCategoryLabel position y + methodCategoryLabel height - 1).