building
toolbarButtons
	"The model for these button-actions is classDiagramMorph (an SClassDiagram).
	These buttons represent a toolbar; they contain actions for altering the contents of the class-diagram."
	
	^ #(
		('File' #fileMenu #alwaysEnabled)
		('Add note' #addNote #alwaysEnabled)
		('Add class' #addClass #alwaysEnabled)
		('Zoom in' #zoomIn #alwaysEnabled)
		('Zoom out' #zoomOut #canZoomOut)
		('Layout' #layoutGraph #alwaysEnabled)
		('Preferences' #openPreferences #alwaysEnabled)
		
"The auto-layout buttons are disabled; when deleting this, also delete all implementation-methods in SClassDiagram and SClassMorph."
"		('Trigger Auto Layout' #startLayouting #isLayoutNotRunning)
		('Lock Auto Layout' #lockLayouting #isLayoutUnlocked)
		('Stop Auto Layout' #stopLayouting #isLayoutRunning)
"
		)