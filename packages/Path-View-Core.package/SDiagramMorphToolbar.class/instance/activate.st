popup
activate
	
	self
		updateBounds;
		updateButtons;
		hideSimilarPopups.
	"Behind the owner, to avoid stealing it's events, but above the rest, to cover connectors etc."
	parentMorph addMorph: self behind: morph.