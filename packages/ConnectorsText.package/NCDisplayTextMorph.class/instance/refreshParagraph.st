event handling
refreshParagraph
	| priorEditor |
	priorEditor := editor.	"Save editor state"
	self releaseParagraph.	"Release paragraph so it will grow with selection."
	self paragraph.	"Re-instantiate to set new bounds"
	priorEditor ifNotNil: [ self installEditorToReplace: priorEditor	]. "restore editor state"
