accessing
onClose: aBlock
	"aBlock will be evaluated when the dialog is closed.
	The block will receive an optional parameter, that is a collection with all refactoring-objects,
	that have been applied by the user."
	
	onClose := aBlock.