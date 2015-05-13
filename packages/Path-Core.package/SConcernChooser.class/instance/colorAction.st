color button
colorAction
	ColorPickerMorph new
		choseModalityFromPreference;
		sourceHand: self windowMorph activeHand;
		target: self;
		selector: #setIconColorOfSelectedConcern:;
		originalColor: (self concernColors at: self selectedConcern);
		putUpFor: self windowMorph near: self windowMorph fullBoundsInWorld.