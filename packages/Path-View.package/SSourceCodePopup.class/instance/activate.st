popup
activate
	
	self hideSimilarPopups.
	self position: morph bounds topRight.
	parentMorph addMorphFront: self.