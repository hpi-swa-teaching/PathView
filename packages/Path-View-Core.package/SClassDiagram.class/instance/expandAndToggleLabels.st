layout graph-based
expandAndToggleLabels
	"This should only be called during initialization, to programmatically set up the diagram.
	All morphs, entries and subentries has first to be expanded (initialized), to ensure that pinned methods stay visible after toggleLabels."
	
	classMorphs do: #expandMorphs.
	self toggleLabels