updating
update
	"Update all relevant submorphs"
	
	self classDiagramSubmorphs do: [ :morph | morph update ].
	self updateLabel.